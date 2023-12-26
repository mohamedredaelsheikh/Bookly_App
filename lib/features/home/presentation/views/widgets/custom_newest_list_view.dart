import 'package:booky_app/core/widgets/custom_circural_progress_indecator.dart';
import 'package:booky_app/core/widgets/custom_error_message.dart';
import 'package:booky_app/features/home/presentation/manger/newset_book/newsetbooks_cubit.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSelllerBooksListView extends StatelessWidget {
  const BestSelllerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbooksCubit, NewsetbooksState>(
      builder: (context, state) {
        if (state is NewsetbooksSucces) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetbooksFailure) {
          return CustomErroMessage(errormassage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndecator();
        }
      },
    );
  }
}
