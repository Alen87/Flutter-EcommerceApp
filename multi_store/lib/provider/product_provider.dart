import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  Map<String, dynamic> productData = {};

  getFormData({String? productName}) {
    if (productName != null) {
      productData['productName'] = productName;
    }
  }
}
