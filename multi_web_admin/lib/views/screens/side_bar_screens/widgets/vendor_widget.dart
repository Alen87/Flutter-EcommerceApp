import 'package:flutter/material.dart';

class VendorWidget extends StatelessWidget {
  const VendorWidget({Key? key}) : super(key: key);

  Widget vendorData(int? flex, Widget widget) {
    return Expanded(
      flex: flex!,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          vendorData(
            1,
            Container(height: 50, width: 50, child: Image.network('')),
          ),
          vendorData(
            3,
            Text('Store'),
          ),
          vendorData(
            2,
            Text('City'),
          ),
          vendorData(
            1,
            Text('State'),
          ),
          vendorData(
              1, ElevatedButton(onPressed: () {}, child: Text('Reject'))),
          vendorData(
              1, ElevatedButton(onPressed: () {}, child: Text('View More'))),
        ],
      ),
    );
  }
}
