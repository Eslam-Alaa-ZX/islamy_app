import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class IntroTap5 extends StatelessWidget {
  const IntroTap5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/intro5.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Text(
          'Holy Quran Radio',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppTheam.primaryColor),
        ),
        Text(
          textAlign: TextAlign.center,
          'You can listen to the Holy Quran Radio through the application for free and easily',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppTheam.primaryColor),
        ),
      ],
    );
  }
}
