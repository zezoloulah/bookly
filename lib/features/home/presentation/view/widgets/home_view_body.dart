import 'package:bookly/features/home/presentation/view/widgets/costom_list_seller.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_show_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: h * 0.05),
          CustomAppBar(icon: Icon(Icons.search, size: h * 0.05), isLogo: true),
          SizedBox(height: h * 0.05),
          CustomShowItem(hight: 0.5, width: 0.25),
          SizedBox(height: h * 0.025),
          Text(
            "Best Seller",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomListSeller(),
        ],
      ),
    );
  }
}
