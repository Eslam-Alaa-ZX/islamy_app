import 'package:flutter/material.dart';
import 'package:islamy_app/intro_screen/taps/intro_tap1.dart';
import 'package:islamy_app/intro_screen/taps/intro_tap2.dart';
import 'package:islamy_app/intro_screen/taps/intro_tap3.dart';
import 'package:islamy_app/intro_screen/taps/intro_tap4.dart';
import 'package:islamy_app/intro_screen/taps/intro_tap5.dart';
import 'package:islamy_app/widgets/app_theam.dart';
import 'package:islamy_app/widgets/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = '/Intro_Page';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Widget> introTaps = [
    IntroTap1(),
    IntroTap2(),
    IntroTap3(),
    IntroTap4(),
    IntroTap5(),
  ];

  PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/header.png',
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                controller: controller,
                itemCount: introTaps.length,
                itemBuilder: (context, index) {
                  return introTaps[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (currentIndex == 0)
                    ? Spacer() // Hide "Back" button on first page
                    : TextButton(
                        onPressed: () {
                          if (currentIndex > 0) {
                            controller.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          }
                        },
                        child: Text(
                          "Back",
                          style: textTheme.titleMedium!.copyWith(
                            color: AppTheam.primaryColor,
                          ),
                        ),
                      ),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: introTaps.length,
                      effect: ExpandingDotsEffect(
                        dotColor: AppTheam.white,
                        activeDotColor: AppTheam.primaryColor,
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 8.0,
                      ),
                    ),
                  ),
                ),
                (currentIndex == introTaps.length - 1)
                    ? TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            HomePage.routeName,
                          ); // Navigate to home screen
                        },
                        child: Text(
                          "Finish",
                          style: textTheme.titleMedium!.copyWith(
                            color: AppTheam.primaryColor,
                          ),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          if (currentIndex < introTaps.length) {
                            controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          }
                        },
                        child: Text(
                          "Next",
                          style: textTheme.titleMedium!.copyWith(
                            color: AppTheam.primaryColor,
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
