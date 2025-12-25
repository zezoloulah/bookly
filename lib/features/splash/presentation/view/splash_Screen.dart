import 'package:bookly/core/util/app_color.dart';
import 'package:bookly/features/splash/presentation/view/widget/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.firstColor,
      body: SplashViewBody(),
    );
  }
}
