import 'package:bookly/core/util/app_image.dart';
import 'package:bookly/features/details/presentation/view/widget/custom_prise.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_show_item.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.05),
            CustomAppBar(
              icon: Icon(Icons.shopping_cart_outlined, size: h * 0.04),
            ),
            SizedBox(height: h * 0.05),
            Center(child: Image.asset(AppImage.book, height: h * 0.35)),
            SizedBox(height: h * 0.03),
            Center(child: Text("The Jungle Book", style: TextStyle(fontSize: 26))),
            Center(
              child: Text(
                "Rudyard Kipling",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text("4.4", style: TextStyle(fontSize: 15)),
                Text(
                  "(2345)",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: h * 0.05),
            CustomPrise(),
            SizedBox(height: h * 0.04),
            Text("You can also like",style: TextStyle(fontSize: 15),),
            CustomShowItem(width:0.2 ,hight: 0.05,)
          ],
        ),
      ),
    );
  }
}
