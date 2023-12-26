part of 'similarbook_cubit.dart';

sealed class SimilarbookState extends Equatable {
  const SimilarbookState();

  @override
  List<Object> get props => [];
}

class SimilarbookInitial extends SimilarbookState {}

class SimilarbookLoading extends SimilarbookState {}

class SimilarbookSuccess extends SimilarbookState {
  final List<BookModel> books;

  const SimilarbookSuccess({required this.books});
}

class SimilarbookFailure extends SimilarbookState {
  final String errorMessage;

  const SimilarbookFailure({required this.errorMessage});
}
