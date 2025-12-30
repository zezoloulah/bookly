// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import 'package:bookly/core/util/app_image.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.isLogo, required this.icon, this.onTap});
  final bool? isLogo;
  final Icon icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isLogo!
            ? SvgPicture.asset(AppImage.logo, height: h * 0.04)
            : GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close),
              ),
        GestureDetector(onTap: onTap, child: icon),
      ],
    );
  }
}
