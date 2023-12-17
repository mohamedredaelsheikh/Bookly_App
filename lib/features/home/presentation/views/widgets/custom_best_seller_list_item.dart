import 'package:booky_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          const Column(
            children: [
              Text("data"),
              Text("data"),
              Row(
                children: [
                  Text("data"),
                  Text("data"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
