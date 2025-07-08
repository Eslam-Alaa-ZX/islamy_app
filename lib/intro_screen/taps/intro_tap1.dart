import 'package:flutter/material.dart';

class IntroTap1 extends StatelessWidget {
  const IntroTap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tap1", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
