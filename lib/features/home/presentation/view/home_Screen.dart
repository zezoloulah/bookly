import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_all_book/fetch_all_book_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/fetch_news_book/fetch_news_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FetchAllBookCubit(
              HomeRepoImplementation(ApiService(dio: Dio())),
            )..getAllBooks(),
          ),
          BlocProvider(
            create: (context) => FetchNewsBookCubit(
              HomeRepoImplementation(ApiService(dio: Dio())),
            )..fetchBook(),
          ),
        ],
        child: HomeViewBody(),
      ),
    );
  }
}
