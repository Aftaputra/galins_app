import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarNew extends StatelessWidget implements PreferredSizeWidget {
  // Path buat SVG
  final String svgPath = 'lib/assets/LogoAppbar.svg';

  const AppBarNew({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(
        svgPath,  // Path buat SVG
        height: 30.0, // Set the height of the SVG
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
