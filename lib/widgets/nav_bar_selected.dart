import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/widgets/app_theam.dart';

class NavBarSelected extends StatelessWidget {
  String icon;
  NavBarSelected({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: AppTheam.black.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(66),
      ),
      child: SvgPicture.asset(
        "assets/images/${icon}_icon.svg",
        width: 22,
        height: 22,
        fit: BoxFit.fill,
        colorFilter: ColorFilter.mode(AppTheam.white, BlendMode.srcIn),
      ),
    );
  }
}
