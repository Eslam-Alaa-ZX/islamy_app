import 'package:flutter/material.dart';

void main() {
  runApp(IslamyApp());
}

class IslamyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Islamy')),
        body: Center(child: Text('Welcome to Islamy!')),
      ),
    );
  }
}
