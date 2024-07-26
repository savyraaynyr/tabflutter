import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ), // MaterialApp
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'My App'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text( 'Hello, World!'),
      ),
    );
  }
}
