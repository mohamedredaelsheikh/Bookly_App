import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/features/home/data/models/book_model/book_model.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_newest_item_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: CustomBookImage(
                urlImage: bookModel.volumeInfo!.imageLinks?.thumbnail ?? " ",
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo!.authors?[0] ?? " ",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const BookRating(
                        bookrating: 0,
                        count: 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
