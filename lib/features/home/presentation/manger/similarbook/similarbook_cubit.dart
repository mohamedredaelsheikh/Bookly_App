import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similarbook_state.dart';

class SimilarbookCubit extends Cubit<SimilarbookState> {
  SimilarbookCubit(this.homeRepo) : super(SimilarbookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(SimilarbookLoading());
    var result = await homeRepo.fetchSimilarBook(category: category);

    result.fold((failure) {
      emit(SimilarbookFailure(errorMessage: failure.errormessage));
    }, (books) {
      emit(SimilarbookSuccess(books: books));
    });
  }
}
