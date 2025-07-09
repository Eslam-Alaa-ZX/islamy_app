import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class IntroTap4 extends StatelessWidget {
  const IntroTap4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/intro4.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Text(
          'Bearish',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppTheam.primaryColor),
        ),
        Text(
          textAlign: TextAlign.center,
          'Praise the name of your Lord, the Most High',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppTheam.primaryColor),
        ),
      ],
    );
  }
}
