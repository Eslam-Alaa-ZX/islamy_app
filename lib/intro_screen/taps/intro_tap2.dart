import 'package:flutter/material.dart';

class IntroTap2 extends StatelessWidget {
  const IntroTap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tap2", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
    ;
  }
}
