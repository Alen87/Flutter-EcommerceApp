import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VendorRegistrationScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 200,
        ),
      ],
    ));
  }
}
