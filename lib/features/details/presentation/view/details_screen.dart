import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/details/presentation/view/widget/details_view_body.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_all_book/fetch_all_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.data});
  final BookItem data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            FetchAllBookCubit(HomeRepoImplementation(ApiService(dio: Dio())))
              ..getAllBooks(),
        child: DetailsViewBody(data: data,),
      ),
    );
  }
}
