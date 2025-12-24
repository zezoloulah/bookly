import 'package:bookly/features/home/presentation/view/widgets/custom_show_best_seller.dart';
import 'package:flutter/material.dart';

class CustomListSeller extends StatelessWidget {
  const CustomListSeller({super.key});

  @override
  Widget build(BuildContext context) {
      final h = MediaQuery.of(context).size.height;
    return Container(
            height: h*0.53,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, count) {
                return CustomShowBestSeller();
              },
            ),
          );
  }
}