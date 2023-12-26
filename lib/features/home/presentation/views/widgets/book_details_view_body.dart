import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_section.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_similir_section.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BooKDetailsBody extends StatelessWidget {
  const BooKDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookDetailsSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
