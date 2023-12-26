import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newsetbooks_state.dart';

class NewsetbooksCubit extends Cubit<NewsetbooksState> {
  NewsetbooksCubit(this.homeRepo) : super(NewsetbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBook() async {
    var result = await homeRepo.fetchNewsetBook();

    result.fold((failure) {
      emit(NewsetbooksFailure(errorMessage: failure.errormessage));
    }, (books) {
      emit(NewsetbooksSucces(books: books));
    });
  }
}
