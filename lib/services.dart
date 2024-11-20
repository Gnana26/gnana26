import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Services')),
      body: Center(
        child: Text('Our services are listed here.',
            style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
