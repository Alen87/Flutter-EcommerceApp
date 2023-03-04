import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.yellow.shade900,
        title: Text(
          'Profile',
          style: TextStyle(letterSpacing: 4),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.star),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: CircleAvatar(
              radius: 64,
              backgroundColor: Colors.yellow.shade900,
            ),
          ),
          Text(
            'Macualay Famous',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Macualayfamous@gmail.com',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.00),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('Cart'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Orders'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title:
                Text('Logout', style: TextStyle(color: Colors.yellow.shade900)),
          ),
        ],
      ),
    );
  }
}
