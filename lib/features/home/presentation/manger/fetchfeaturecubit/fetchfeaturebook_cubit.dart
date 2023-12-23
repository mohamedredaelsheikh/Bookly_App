import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetchfeaturebook_state.dart';

class FetchfeaturebookCubit extends Cubit<FetchfeaturebookState> {
  FetchfeaturebookCubit(this.homeRepo) : super(FetchfeaturebookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    var result = await homeRepo.fetchFeatureBook();

    result.fold((failure) {
      emit(FetchfeaturebookFailure(errorMessage: failure.errormessage));
    }, (books) {
      emit(FetchfeaturebookSuccess(books: books));
    });
  }
}
