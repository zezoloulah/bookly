part of 'fetch_news_book_cubit.dart';

class FetchNewsBookState extends Equatable {
  const FetchNewsBookState();

  @override
  List<Object> get props => [];
}

class FetchBookInitial extends FetchNewsBookState {}

class FetchBookLoading extends FetchNewsBookState {}

class FetchBookSuccess extends FetchNewsBookState {
  final BookModel books;

  const FetchBookSuccess({required this.books});
}

class FetchBookFailure extends FetchNewsBookState {
  final String errMassage;

  const FetchBookFailure({required this.errMassage});
}
