import 'package:booky_app/core/widgets/custom_button.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: "Free Preview",
              fontsize: 16,
              backgroundcolor: const Color(0xffEF8252),
              textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
