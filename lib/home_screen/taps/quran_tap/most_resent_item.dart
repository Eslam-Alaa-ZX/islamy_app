import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_details.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class MostResentItem extends StatelessWidget {
  Sura sura;
  MostResentItem({required this.sura});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetails.routeName, arguments: sura);
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.67,
        decoration: BoxDecoration(
          color: AppTheam.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    sura.englishName,
                    style: textTheme.headlineSmall!.copyWith(
                      color: AppTheam.black,
                    ),
                  ),
                  Text(
                    sura.arabicName,
                    style: textTheme.headlineSmall!.copyWith(
                      color: AppTheam.black,
                    ),
                  ),
                  Text(
                    "${sura.numberOfVerses} Verses",
                    style: textTheme.titleSmall!.copyWith(
                      color: AppTheam.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/quran_most_reasent.png",
                  fit: BoxFit.fill,
                  //height: MediaQuery.sizeOf(context).height * 0.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
