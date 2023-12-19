import 'package:booky_app/features/home/presentation/views/widgets/custom_best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSelllerBooksListView extends StatelessWidget {
  const BestSelllerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}
