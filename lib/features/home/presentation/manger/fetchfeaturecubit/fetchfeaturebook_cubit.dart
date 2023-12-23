import 'package:bloc/bloc.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetchfeaturebook_state.dart';

class FetchfeaturebookCubit extends Cubit<FetchfeaturebookState> {
  FetchfeaturebookCubit() : super(FetchfeaturebookInitial());
}
