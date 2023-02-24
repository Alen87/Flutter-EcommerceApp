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
      child: vendorData(
        1,
        Container(),
      ),
    );
  }
}
