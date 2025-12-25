import 'package:bookly/core/util/app_image.dart';
import 'package:bookly/features/details/presentation/view/details_screen.dart';
import 'package:flutter/material.dart';

class CustomShowBestSeller extends StatelessWidget {
  const CustomShowBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen()),
        );
      },
      child: Container(
        height: h * 0.2,
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(
              AppImage.book,
              height: h * 0.17,
              width: w * 0.2,
              fit: BoxFit.fill,
            ),
            SizedBox(width: w * 0.06),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.03),
                Container(
                  height: h * 0.08,
                  width: w * 0.5,
                  child: Text(
                    "Harry Potter\nand the Goblet of Fire",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "J.K. Rowling",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: w * 0.07),
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      "4.6",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      " (2390)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
