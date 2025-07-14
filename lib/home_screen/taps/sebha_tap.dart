import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class SebhaTap extends StatefulWidget {
  static const String backgroundImage = 'assets/images/background_sebha.png';

  SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme textStyle = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: textStyle.displaySmall,
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Align(
                //alignment: Alignment.topCenter,
                heightFactor: 1.2,
                child: Image.asset("assets/images/sebha_head.png"),
              ),

              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("سبحان الله", style: textStyle.displaySmall),
                    SizedBox(height: 15),
                    Text("$counter", style: textStyle.displaySmall),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onLongPress: () {
                    counter = 0;
                    setState(() {});
                  },
                  onTap: () {
                    counter++;
                    setState(() {});
                  },
                  child: Transform.rotate(
                    angle: -math.pi / (2 / counter),
                    child: Image.asset("assets/images/sebha_body.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
