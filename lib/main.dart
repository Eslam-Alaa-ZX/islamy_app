import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_details.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_details.dart';
import 'package:islamy_app/widgets/app_theam.dart';
import 'package:islamy_app/widgets/home_page.dart';
import 'package:islamy_app/widgets/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuranData.getFromShardPref();
  bool isFirstTime = await checkFirstTime();
  runApp(IslamyApp(isFirstTime: isFirstTime));
}

Future<bool> checkFirstTime() async {
  SharedPreferences shared = await SharedPreferences.getInstance();
  if (shared.getBool("firstTime") == null) {
    shared.setBool("firstTime", true);
    return true;
  } else {
    return false;
  }
}

class IslamyApp extends StatelessWidget {
  bool isFirstTime;
  IslamyApp({required this.isFirstTime});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy App',
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        HomePage.routeName: (context) => HomePage(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadithDetails.routeName: (context) => HadithDetails(),
      },
      initialRoute: (isFirstTime) ? IntroScreen.routeName : HomePage.routeName,
      theme: AppTheam.appTheme,
    );
  }
}
