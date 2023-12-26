import 'package:booky_app/core/widgets/custom_circural_progress_indecator.dart';
import 'package:booky_app/core/widgets/custom_error_message.dart';
import 'package:booky_app/features/home/presentation/manger/fetchfeaturecubit/fetchfeaturebook_cubit.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchfeaturebookCubit, FetchfeaturebookState>(
      builder: (context, state) {
        if (state is FetchfeaturebookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      urlImage: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          " ",
                    ),
                  );
                }),
          );
        } else if (state is FetchfeaturebookFailure) {
          return CustomErroMessage(errormassage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndecator();
        }
      },
    );
  }
}
