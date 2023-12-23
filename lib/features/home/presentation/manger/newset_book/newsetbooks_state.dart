part of 'newsetbooks_cubit.dart';

sealed class NewsetbooksState extends Equatable {
  const NewsetbooksState();

  @override
  List<Object> get props => [];
}

class NewsetbooksInitial extends NewsetbooksState {}

class NewsetbooksLoading extends NewsetbooksState {}

class NewsetbooksSucces extends NewsetbooksState {
  final List<BookModel> books;

  const NewsetbooksSucces({required this.books});
}

class NewsetbooksFailure extends NewsetbooksState {
  final String errorMessage;

  const NewsetbooksFailure({required this.errorMessage});
}
