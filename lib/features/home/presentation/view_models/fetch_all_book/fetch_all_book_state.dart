part of 'fetch_all_book_cubit.dart';

class FetchAllBookState extends Equatable {
  const FetchAllBookState();

  @override
  List<Object> get props => [];
}

class FetchAllBookInitial extends FetchAllBookState {}

class FetchAllBookLoading extends FetchAllBookState {}

class FetchAllBookSuccess extends FetchAllBookState {
  final BookModel books;
  const FetchAllBookSuccess({required this.books});
}

class FetchAllBookFailure extends FetchAllBookState {
  final String errMassage;

  const FetchAllBookFailure({required this.errMassage});
}
