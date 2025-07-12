import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/home_screen/taps/quran_tap/quran_data.dart';
import 'package:islamy_app/main.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = '/Quran_Details';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> suraContents = [];

  @override
  Widget build(BuildContext context) {
    Sura sura = ModalRoute.of(context)!.settings.arguments as Sura;
    if (suraContents.isEmpty) getSuraContent(sura.suraNumber);
    TextTheme textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sura.englishName,
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
                  sura.arabicName,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppTheam.primaryColor,
                  ),
                ),
                Image.asset("assets/images/details_r.png", fit: BoxFit.fill),
              ],
            ),
          ),
          Expanded(
            child: (suraContents.isNotEmpty)
                ? ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) => Text(
                      suraContents[index],
                      style: textStyle.titleLarge!.copyWith(
                        color: AppTheam.primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: suraContents.length,
                  )
                : Center(
                    child: CircularProgressIndicator(
                      color: AppTheam.primaryColor,
                    ),
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

  Future<void> getSuraContent(int suraNumber) async {
    String suraContent = await rootBundle.loadString(
      "assets/text/$suraNumber.txt",
    );
    if (suraContent.isNotEmpty) suraContents = suraContent.split("\r\n");

    setState(() {});
  }
}
