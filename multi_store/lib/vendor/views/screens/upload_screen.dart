import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade900,
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(
              child: Text('General'),
            ),
            Tab(
              child: Text('Shipping'),
            ),
            Tab(
              child: Text('Attributes'),
            ),
            Tab(
              child: Text('Images'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('General'),
          ),
          Center(
            child: Text('Shipping'),
          ),
          Center(
            child: Text('Attributes'),
          ),
          Center(
            child: Text('Images'),
          ),
        ]),
      ),
    );
  }
}
