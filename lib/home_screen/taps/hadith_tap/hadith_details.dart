import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_data.dart';
import 'package:islamy_app/main.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class HadithDetails extends StatefulWidget {
  static const String routeName = '/Hadith_Details';

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)!.settings.arguments as Hadith;

    TextTheme textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hadith ${hadith.number}",
          style: textStyle.titleLarge!.copyWith(color: AppTheam.primaryColor),
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
                  hadith.title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppTheam.primaryColor,
                  ),
                ),
                Image.asset("assets/images/details_r.png", fit: BoxFit.fill),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) => Text(
                hadith.content[index],
                style: textStyle.titleLarge!.copyWith(
                  color: AppTheam.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: hadith.content.length,
            ),
          ),
          Image.asset(
            "assets/images/details_b.png",
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
