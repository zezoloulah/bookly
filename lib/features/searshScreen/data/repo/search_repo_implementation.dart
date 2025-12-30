import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/util/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/searshScreen/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation extends SearchRepo {
  final ApiService apiService;

  SearchRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, BookModel>> searchBySubject(String subject) async {
    try {
      var res = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=news&q=subject:${subject}',
      );
      var data = BookModel.fromJson(res);
      return Right(data);
    } catch (e) {
        if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
    
  }
}
