import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class HadithTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_hadith.png';
  HadithTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hadith Tap',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheam.white,
        ),
      ),
    );
  }
}
