import 'package:bookly/core/util/app_image.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, this.isLogo = false});
  final bool isLogo;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isLogo
            ? SvgPicture.asset(AppImage.logo, height: h * 0.04)
            : GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close),
              ),
        icon,
      ],
    );
  }
}
