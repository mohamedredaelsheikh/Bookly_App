import 'package:booky_app/constants.dart';
import 'package:booky_app/features/home/presentation/views/book_details_view.dart';
import 'package:booky_app/features/home/presentation/views/home_view.dart';
import 'package:booky_app/features/splash/presentation/views/spalsh_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
