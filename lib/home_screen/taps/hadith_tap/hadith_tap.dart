import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_data.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_item.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class HadithTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_hadith.png';
  const HadithTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CarouselSlider.builder(
        itemCount: 50,
        itemBuilder: (context, index, realIndex) {
          return HadithItem(index: index);
        },
        options: CarouselOptions(
          height: double.infinity,
          enlargeCenterPage: true,
          viewportFraction: 0.7,
          enlargeFactor: 0.2,
        ),
      ),
    );
  }
}
