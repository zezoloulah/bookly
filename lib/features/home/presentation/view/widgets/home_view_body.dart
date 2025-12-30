import 'package:bookly/features/home/presentation/view/widgets/costom_list_seller.dart';
import 'package:bookly/core/util/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_show_item.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_all_book/fetch_all_book_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_news_book/fetch_news_book_cubit.dart';
import 'package:bookly/features/searshScreen/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          CustomAppBar(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
            },
            icon: Icon(Icons.search, size: h * 0.05),
            isLogo: true,
          ),
          SizedBox(height: h * 0.05),
          BlocBuilder<FetchAllBookCubit, FetchAllBookState>(
            builder: (context, state) {
              if (state is FetchAllBookLoading) {
                return Container(
                  height: h * 0.2,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (state is FetchAllBookSuccess) {
                return CustomShowItem(
                  hight: 0.5,
                  width: 0.35,
                  data: state.books,
                );
              }
              if (state is FetchAllBookFailure) {
                return Text(" error:${state.errMassage}");
              }
              return Container();
            },
          ),
          SizedBox(height: h * 0.025),
          Text(
            "Best Seller",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          BlocBuilder<FetchNewsBookCubit, FetchNewsBookState>(
            builder: (context, state) {
              if (state is FetchBookLoading) {
                return Container(
                  height: h * 0.5,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (state is FetchBookSuccess) {
                return CustomListSeller(data: state.books,hight: 0.5,);
              }
              if (state is FetchBookFailure) {
                return Text(" ${state.errMassage}");
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
