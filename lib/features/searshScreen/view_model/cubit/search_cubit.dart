import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/searshScreen/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future getData(String subject) async {
    emit(SearchLoading());
    var data = await searchRepo.searchBySubject(subject);
    data.fold(
      (failure) {
        emit(SearchFailure(errMassage: failure.errMassage));
      },
      (data) {
        emit(SearchSuccess(data: data));
      },
    );
  }
}
