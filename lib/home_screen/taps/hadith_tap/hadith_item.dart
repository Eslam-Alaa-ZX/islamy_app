import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_data.dart';
import 'package:islamy_app/home_screen/taps/hadith_tap/hadith_details.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class HadithItem extends StatefulWidget {
  int index;

  HadithItem({required this.index});

  @override
  State<HadithItem> createState() => _HadithItemState();
}

class _HadithItemState extends State<HadithItem> {
  Hadith? hadith;

  @override
  Widget build(BuildContext context) {
    if (hadith == null) lodeHadith();
    TextTheme textStyle = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(HadithDetails.routeName, arguments: hadith);
      },
      child: Container(
        //margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppTheam.primaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/hadith_l.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.1,
                  ),
                  if (hadith != null)
                    Expanded(
                      child: Text(
                        hadith!.title,
                        textAlign: TextAlign.center,
                        style: textStyle.headlineSmall!.copyWith(
                          color: AppTheam.black,
                        ),
                      ),
                    ),
                  Image.asset(
                    'assets/images/hadith_r.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.1,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/hadith_bg.png"),
                  ),
                ),
                child: (hadith == null)
                    ? Center(
                        child: CircularProgressIndicator(color: AppTheam.black),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemCount: hadith!.content.length,
                        itemBuilder: (context, index) => Text(
                          hadith!.content[index],
                          style: textStyle.titleMedium!.copyWith(
                            color: AppTheam.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
              ),
            ),
            Image.asset(
              'assets/images/hadith_b.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> lodeHadith() async {
    String hadithtxt = await rootBundle.loadString(
      "assets/text/h${widget.index + 1}.txt",
    );
    if (hadithtxt.isEmpty) return;
    List<String> hadithLines = hadithtxt.split('\n');
    String title = hadithLines[0];
    hadithLines.removeAt(0);
    hadith = Hadith(
      title: title,
      content: hadithLines,
      number: widget.index + 1,
    );
    setState(() {});
  }
}
