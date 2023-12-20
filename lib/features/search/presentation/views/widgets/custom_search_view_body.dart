import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/features/search/presentation/views/widgets/custom_search_list_view.dart';
import 'package:booky_app/features/search/presentation/views/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFormTextField(
            hinttext: "Search",
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
