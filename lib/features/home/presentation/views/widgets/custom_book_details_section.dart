import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_best_seller_item_rating.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_details_button_action.dart';
import 'package:booky_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(
            urlImage:
                "https://www.bing.com/images/search?view=detailV2&ccid=KbEyrvoR&id=91E8ECA1956453CB7487A629B5EF67A348782D64&thid=OIP.KbEyrvoRTqpdJO-IYtL5fQHaEB&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.29b132aefa114eaa5d24ef8862d2f97d%3frik%3dZC14SKNn77Uppg%26riu%3dhttp%253a%252f%252fadoubleshotofrecovery.com%252fwp-content%252fuploads%252f2014%252f10%252fbook.jpg%26ehk%3d77R256cnF0PBE9Lm05X8NycfH%252fIRMDBddRe9ZwTrpuk%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=3035&expw=5577&q=bookimage&simid=608035638781163127&FORM=IRPRST&ck=15D33A1BFD0FA0F6E4BC9C3F7559A0F3&selectedIndex=1&itb=0",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const ButtonAction(),
      ],
    );
  }
}
