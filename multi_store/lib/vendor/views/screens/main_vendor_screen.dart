import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainVendorScreen extends StatelessWidget {
  const MainVendorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black87,
          selectedItemColor: Colors.yellow.shade900,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.money_dollar), label: 'EARNINGS'),
            BottomNavigationBarItem(icon: Icon(Icons.upload), label: 'UPLOAD'),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'EDIT'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.shopping_cart), label: 'ORDERS'),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'LOGOUT'),
          ]),
    );
  }
}
