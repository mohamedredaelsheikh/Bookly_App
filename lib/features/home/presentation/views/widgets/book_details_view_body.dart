import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BoolDetailsBody extends StatelessWidget {
  const BoolDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
