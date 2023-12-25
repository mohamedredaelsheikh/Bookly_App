import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/service_locator.dart';
import 'package:booky_app/features/home/data/repos/home_repo_impli.dart';
import 'package:booky_app/features/home/presentation/manger/fetchfeaturecubit/fetchfeaturebook_cubit.dart';
import 'package:booky_app/features/home/presentation/manger/newset_book/newsetbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchfeaturebookCubit(
            getIt.get<HomeRepoImpli>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsetbooksCubit(
            getIt.get<HomeRepoImpli>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
