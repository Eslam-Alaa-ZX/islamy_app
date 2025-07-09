import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class IntroTap2 extends StatelessWidget {
  const IntroTap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/intro2.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Text(
          'Welcome to Islamy App',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: AppTheam.primaryColor),
        ),
        Text(
          textAlign: TextAlign.center,
          'We Are Very Excited To Have You In Our Community',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppTheam.primaryColor),
        ),
      ],
    );
  }
}
