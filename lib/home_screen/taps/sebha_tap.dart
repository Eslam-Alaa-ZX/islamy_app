import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class SebhaTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_sebha.png';

  const SebhaTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sebha Tap',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheam.white,
        ),
      ),
    );
  }
}
