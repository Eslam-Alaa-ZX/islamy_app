import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class TimesTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_times.png';

  const TimesTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Times Tap',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheam.white,
        ),
      ),
    );
  }
}
