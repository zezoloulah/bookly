import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_show_best_seller.dart';
import 'package:flutter/material.dart';

class CustomListSeller extends StatelessWidget {
  const CustomListSeller({super.key, required this.data, required this.hight});
  final BookModel data;
  final double hight;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Container(
      height: h * hight,
      width: double.infinity,
      child: ListView.builder(
        itemCount: data.items.length,
        itemBuilder: (context, count) {
          return CustomShowBestSeller(data: data.items[count]);
        },
      ),
    );
  }
}
