import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/features/home/data/repos/home_repo_impli.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<HomeRepoImpli>(
    HomeRepoImpli(
      apiService: ApiService(
        dio: Dio(),
      ),
    ),
  );
}
