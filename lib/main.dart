import 'package:flutter/material.dart';

void main() {
  runApp(IslamyApp());
}

class IslamyApp extends StatelessWidget {
  const IslamyApp({super.key});

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
