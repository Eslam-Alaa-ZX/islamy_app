import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class IntroTap1 extends StatelessWidget {
  const IntroTap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/intro1.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Text(
          'Welcome to Islamy App',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppTheam.primaryColor),
        ),
      ],
    );
  }
}
