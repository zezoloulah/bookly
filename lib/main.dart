import 'package:bookly/core/util/app_color.dart';
import 'package:bookly/features/splash/presentation/view/splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.firstColor,
      ),
      home: SplashScreen(),
    
    );
  }
}
