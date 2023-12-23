part of 'fetchfeaturebook_cubit.dart';

sealed class FetchfeaturebookState extends Equatable {
  const FetchfeaturebookState();

  @override
  List<Object> get props => [];
}

class FetchfeaturebookInitial extends FetchfeaturebookState {}

class FetchfeaturebookLoading extends FetchfeaturebookState {}

class FetchfeaturebookSuccess extends FetchfeaturebookState {
  final List<BookModel> books;

  const FetchfeaturebookSuccess({required this.books});
}

class FetchfeaturebookFailure extends FetchfeaturebookState {
  final String errorMessage;

  const FetchfeaturebookFailure({required this.errorMessage});
}
