import 'package:booky_app/core/errors/failure.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();

  Future<Either<Failure, List<BookModel>>> fetchFeatureBook();
}
