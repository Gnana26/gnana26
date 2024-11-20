import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: Center(
        child: Text('Learn more about us on this page.',
            style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
