import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/sura_item.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class QuranTap extends StatelessWidget {
  static const String backgroundImage = 'assets/images/background_quran.png';

  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Text(
            "Suras List",
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: Color(0xffFEFFE8)),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: QuranData.quranSuras.length,
            itemBuilder: (context, index) {
              return SuraItem(suraData: QuranData.quranSuras[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: AppTheam.white,
                thickness: 1,
                indent: 50,
                endIndent: 40,
              );
            },
          ),
        ),
      ],
    );
  }
}
