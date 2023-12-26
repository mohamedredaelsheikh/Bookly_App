import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/service_locator.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repos/home_repo_impli.dart';
import 'package:booky_app/features/home/presentation/manger/similarbook/similarbook_cubit.dart';
import 'package:booky_app/features/home/presentation/views/book_details_view.dart';
import 'package:booky_app/features/home/presentation/views/home_view.dart';
import 'package:booky_app/features/search/presentation/views/searchview.dart';
import 'package:booky_app/features/splash/presentation/views/spalsh_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarbookCubit(
            getIt.get<HomeRepoImpli>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
