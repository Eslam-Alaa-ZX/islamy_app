import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_details.dart';

class SuraItem extends StatelessWidget {
  Sura suraData;
  VoidCallback refresh;
  SuraItem({super.key, required this.suraData, required this.refresh});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.pushNamed(
          context,
          QuranDetails.routeName,
          arguments: suraData,
        );
        QuranData.addMostResentSura(suraData);
        refresh();
      },
      child: Row(
        children: [
          Container(
            width: 75,
            margin: EdgeInsets.only(right: 24),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sura_number.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(
              "${suraData.suraNumber}",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraData.englishName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "${suraData.numberOfVerses} Verses",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.arabicName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
