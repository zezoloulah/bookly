import 'package:bookly/core/util/app_image.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppImage.logo, height: h * 0.04),
              Icon(Icons.search, size: h * 0.05),
            ],
          );
  }
}