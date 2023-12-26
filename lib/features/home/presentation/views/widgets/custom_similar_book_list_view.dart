import 'package:booky_app/constants.dart';
import 'package:booky_app/core/widgets/custom_circural_progress_indecator.dart';
import 'package:booky_app/core/widgets/custom_error_message.dart';
import 'package:booky_app/features/home/presentation/manger/similarbook/similarbook_cubit.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: BlocBuilder<SimilarbookCubit, SimilarbookState>(
        builder: (context, state) {
          if (state is SimilarbookSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push(kBookDetailsView, extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        urlImage: state.books[index].volumeInfo!.imageLinks
                                ?.thumbnail ??
                            " ",
                      ),
                    ),
                  );
                });
          } else if (state is SimilarbookFailure) {
            return CustomErroMessage(errormassage: state.errorMessage);
          } else {
            return const CustomCircularProgressIndecator();
          }
        },
      ),
    );
  }
}
