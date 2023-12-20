import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_section.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_similir_section.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BoolDetailsBody extends StatelessWidget {
  const BoolDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookDetailsSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
