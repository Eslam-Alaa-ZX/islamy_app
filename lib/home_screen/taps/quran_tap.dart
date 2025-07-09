import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class QuranTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_quran.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quran Tap',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheam.white,
        ),
      ),
    );
  }
}
