import 'package:bookly/core/util/app_image.dart';
import 'package:flutter/material.dart';

class CustomShowItem extends StatelessWidget {
  const CustomShowItem({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
            height: h*0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: h * 0.10,
                    width: w * 0.3,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Image.asset(
                        AppImage.book,fit: BoxFit.cover,)),
                  ),
                );
              },
            ),
          );
  }
}