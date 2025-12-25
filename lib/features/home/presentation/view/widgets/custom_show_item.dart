import 'package:bookly/core/util/app_image.dart';
import 'package:bookly/features/details/presentation/view/details_screen.dart';
import 'package:flutter/material.dart';

class CustomShowItem extends StatelessWidget {
  const CustomShowItem({super.key, required this.hight, required this.width});
  final double hight;
  final double width;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, count) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: Container(
                height: h * hight,
                width: w * width,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.asset(AppImage.book, fit: BoxFit.fill),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
