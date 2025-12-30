import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_news_book_state.dart';

class FetchNewsBookCubit extends Cubit<FetchNewsBookState> {
  FetchNewsBookCubit(this.homeRepo) : super(FetchBookInitial());
  final HomeRepo homeRepo;
  Future fetchBook() async {
    emit(FetchBookLoading());
    var res = await homeRepo.fetchNewsBook();
    res.fold(
      (failure) {
        emit(FetchBookFailure(errMassage: failure.errMassage));
      },
      (books) {
        emit(FetchBookSuccess(books: books));
      },
    );
  }
}
