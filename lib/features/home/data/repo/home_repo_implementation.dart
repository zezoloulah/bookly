import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, BookModel>> fetchNewsBook() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=news&q=subject:programming',
      );
      var book = BookModel.fromJson(data);
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchAllBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:programming',
      );

      var book = BookModel.fromJson(data);
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
