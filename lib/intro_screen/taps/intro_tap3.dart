import 'package:flutter/material.dart';

class IntroTap3 extends StatelessWidget {
  const IntroTap3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tap3", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
    ;
  }
}
