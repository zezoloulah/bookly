import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_all_book_state.dart';

class FetchAllBookCubit extends Cubit<FetchAllBookState> {
  FetchAllBookCubit(this.homeRepo) : super(FetchAllBookInitial());
  final HomeRepo homeRepo;
  Future getAllBooks() async {
    emit(FetchAllBookLoading());

    var res = await homeRepo.fetchAllBooks();
    res.fold(
      (failure) {
        emit(FetchAllBookFailure(errMassage: failure.errMassage));
      },
      (books) {
        emit(FetchAllBookSuccess(books: books));
        
      },
    );
  }
}
