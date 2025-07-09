import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap.dart';
import 'package:islamy_app/home_screen/taps/quran_tap.dart';
import 'package:islamy_app/home_screen/taps/radio_tap.dart';
import 'package:islamy_app/home_screen/taps/sebha_tap.dart';
import 'package:islamy_app/home_screen/taps/times_tap.dart';
import 'package:islamy_app/widgets/nav_bar_selected.dart';
import 'package:islamy_app/widgets/nav_bar_unselected.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/Home_Page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> taps = [
    QuranTap(),
    HadithTap(),
    SebhaTap(),
    RadioTap(),
    TimesTap(),
  ];
  List<String> backgroundImages = [
    QuranTap.backgroundImage,
    HadithTap.backgroundImage,
    SebhaTap.backgroundImage,
    RadioTap.backgroundImage,
    TimesTap.backgroundImage,
  ];
  int currentTap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTap,
        onTap: (value) {
          if (currentTap == value) return;
          currentTap = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: NavBarUnselected(icon: "quran"),
            activeIcon: NavBarSelected(icon: "quran"),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselected(icon: "hadith"),
            activeIcon: NavBarSelected(icon: "hadith"),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselected(icon: "sebha"),
            activeIcon: NavBarSelected(icon: "sebha"),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselected(icon: "radio"),
            activeIcon: NavBarSelected(icon: "radio"),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselected(icon: "times"),
            activeIcon: NavBarSelected(icon: "times"),
            label: 'Times',
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImages[currentTap]),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/header.png',
                fit: BoxFit.fitHeight,
                height: MediaQuery.of(context).size.height * 0.18,
              ),
            ),
            Expanded(child: taps[currentTap]),
          ],
        ),
      ),
    );
  }
}
