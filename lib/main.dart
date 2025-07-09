import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';
import 'package:islamy_app/widgets/home_page.dart';
import 'package:islamy_app/widgets/intro_screen.dart';

void main() {
  runApp(IslamyApp());
}

class IslamyApp extends StatelessWidget {
  const IslamyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy App',
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        HomePage.routeName: (context) => HomePage(),
      },
      initialRoute: IntroScreen.routeName,
      theme: AppTheam.appTheme,
    );
  }
}
