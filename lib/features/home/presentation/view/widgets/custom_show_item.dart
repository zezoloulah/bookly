
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/details/presentation/view/details_screen.dart';

class CustomShowItem extends StatelessWidget {
  const CustomShowItem({Key? key, required this.hight, required this.width, required this.data})
    : super(key: key);
  final double hight;
  final double width;
  final BookModel data;
  @override
  Widget build(BuildContext context) {
    final d=data.items;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SizedBox(
      height: h * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: d.length,
        itemBuilder: (context, count) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(data: d[count],)),
                );
              },
              child: Container(
                height: h * hight,
                width: w * width,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) => Center(child: CircularProgressIndicator()),
                    imageUrl:d[count].volumeInfo!.imageLinks?.smallThumbnail??'https://th.bing.com/th/id/OIP.fqHx5YrkfmOhEogy96O7KgHaIa?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3', fit: BoxFit.fill),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
