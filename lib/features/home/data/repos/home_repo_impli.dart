import 'package:booky_app/core/errors/failure.dart';
import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpli implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpli({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook() async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&startIndex=20&q=subject:computer science");

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook() {
    // TODO: implement fetchFeatureBook
    throw UnimplementedError();
  }
}
