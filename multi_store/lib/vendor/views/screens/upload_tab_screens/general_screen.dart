import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/provider/product_provider.dart';
import 'package:provider/provider.dart';

class GeneralScreen extends StatefulWidget {
  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<String> _categoryList = [];

  _getCategories() {
    return _firestore
        .collection('categories')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        _categoryList.add(doc['categoryName']);
      });
    });
  }

  @override
  void initState() {
    _getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProductProvider _productProvider =
        Provider.of<ProductProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  _productProvider.getFormData(productName: value);
                },
                decoration: InputDecoration(labelText: 'Enter Product Name'),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (value) {
                  _productProvider.getFormData(
                      productPrice: double.parse(value));
                },
                decoration: InputDecoration(labelText: 'Enter Product Price'),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (value) {
                  _productProvider.getFormData(quantity: int.parse(value));
                },
                decoration:
                    InputDecoration(labelText: 'Enter Product Quantity'),
              ),
              SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                  hint: Text('Select Category'),
                  items: _categoryList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _productProvider.getFormData(category: value);
                    });
                  }),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (value) {
                  _productProvider.getFormData(description: value);
                },
                maxLines: 10,
                maxLength: 800,
                decoration: InputDecoration(
                    labelText: 'Enter Product Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(5000),
                      );
                    },
                    child: Text('Schedule'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
