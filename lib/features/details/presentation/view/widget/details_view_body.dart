import 'package:bookly/features/details/presentation/view/widget/custom_prise.dart';
import 'package:bookly/core/util/custom_app_bar.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:bookly/features/home/presentation/view/widgets/custom_show_item.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_all_book/fetch_all_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.data});
  final BookItem data;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
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
              isLogo: false,
            ),
            SizedBox(height: h * 0.05),
            Center(child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                fit:BoxFit.fill ,
                data.volumeInfo!.imageLinks?.smallThumbnail??'https://th.bing.com/th/id/OIP.fqHx5YrkfmOhEogy96O7KgHaIa?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3', height: h * 0.35),
            )),
            SizedBox(height: h * 0.03),
            Center(
              child: Container(
                height: h*0.08,
                width: w*0.9,
                child: Center(
                  child: Text("${data.volumeInfo!.title}", style: TextStyle(fontSize: 26)),
                ),
              ),
            ),
            Center(
              child: Text(
                "${data.volumeInfo!.authors![0]}",
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
            Text("You can also like", style: TextStyle(fontSize: 15)),
            BlocBuilder<FetchAllBookCubit, FetchAllBookState>(
              builder: (context, state) {
                if (state is FetchAllBookLoading) {
                  return Center(
                    child: Container(
                      height: h * 0.09,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is FetchAllBookSuccess) {
                  return CustomShowItem(
                    hight: 0.5,
                    width: 0.25,
                    data: state.books,
                  );
                }
                if (state is FetchAllBookFailure) {
                  return Text(" error:${state.errMassage}");
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
