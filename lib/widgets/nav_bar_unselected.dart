import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarUnselected extends StatelessWidget {
  String icon;
  NavBarUnselected({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/${icon}_icon.svg",
      width: 28,
      height: 28,
      fit: BoxFit.fill,
    );
  }
}
