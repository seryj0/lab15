import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String groupName = "IPZ_31";
  final String userName = "Serhii";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$groupName: $userName\'s last Flutter App'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }
}
