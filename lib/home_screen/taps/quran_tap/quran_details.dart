import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/main.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class QuranDetails extends StatelessWidget {
  static const String routeName = '/Quran_Details';

  @override
  Widget build(BuildContext context) {
    Sura sura = ModalRoute.of(context)!.settings.arguments as Sura;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sura.englishName,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppTheam.primaryColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/details_l.png", fit: BoxFit.fill),
                Text(
                  sura.arabicName,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppTheam.primaryColor,
                  ),
                ),
                Image.asset("assets/images/details_r.png", fit: BoxFit.fill),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/images/details_b.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.13,
          ),
        ],
      ),
    );
  }
}
