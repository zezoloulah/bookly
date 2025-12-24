import 'package:bookly/core/util/app_image.dart';
import 'package:bookly/features/home/presentation/view/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    splashNavigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Container(
      child: Center(child: SvgPicture.asset(height: h * 0.09, AppImage.logo)),
    );
  }
  void splashNavigate() {
    Future.delayed(Duration(seconds: 4), () {
      Get.to(() => HomeScreen());
    });
  }
}
