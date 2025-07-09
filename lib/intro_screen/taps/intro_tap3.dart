import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class IntroTap3 extends StatelessWidget {
  const IntroTap3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/intro3.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Text(
          'Reading the Quran',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppTheam.primaryColor),
        ),
        Text(
          'Read, and your Lord is the Most Generous',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppTheam.primaryColor),
        ),
      ],
    );
  }
}
