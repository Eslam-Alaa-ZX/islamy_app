import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class RadioTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_radio.png';

  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Radio Tap',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheam.white,
        ),
      ),
    );
  }
}
