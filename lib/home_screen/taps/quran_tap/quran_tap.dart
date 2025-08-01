import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/most_reasent.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/sura_item.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class QuranTap extends StatefulWidget {
  static const String backgroundImage = 'assets/images/background_quran.png';

  const QuranTap({super.key});

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onChanged: (value) {
              QuranData.surasSearch(value);
              setState(() {});
            },
            style: Theme.of(context).textTheme.titleMedium,
            decoration: InputDecoration(
              hintText: "Sura Name",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/images/quran_icon.svg",
                  colorFilter: ColorFilter.mode(
                    AppTheam.primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (QuranData.mostResentSuras.isNotEmpty) MostReasent(),
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
              return SuraItem(
                suraData: QuranData.quranSuras[index],
                refresh: () {
                  setState(() {});
                },
              );
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
