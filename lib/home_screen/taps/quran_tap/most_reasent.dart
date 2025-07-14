import 'package:flutter/material.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/most_resent_item.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';

class MostReasent extends StatelessWidget {
  const MostReasent({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.22,
      padding: EdgeInsets.only(top: 20, left: 16, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most Recently",
            style: textTheme.titleMedium!.copyWith(color: Color(0xffFEFFE8)),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemCount: QuranData.mostResentSuras.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  MostResentItem(sura: QuranData.mostResentSuras[index]),
              separatorBuilder: (context, index) => SizedBox(width: 10),
            ),
          ),
        ],
      ),
    );
  }
}
