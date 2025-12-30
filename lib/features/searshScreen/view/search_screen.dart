import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/searshScreen/data/repo/search_repo_implementation.dart';
import 'package:bookly/features/searshScreen/view/widget/search_view_body.dart';
import 'package:bookly/features/searshScreen/view_model/cubit/search_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: BlocProvider(
          create: (context) => SearchCubit(
            SearchRepoImplementation(apiService: ApiService(dio: Dio())),
          ),
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
