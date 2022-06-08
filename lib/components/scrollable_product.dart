import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nft_app/components/fixed_info_product_card.dart';

class ScrollableProduct extends StatelessWidget {
  String image;
  String creatorName;
  String ownerName;
  double price;
  bool isFavorite;

  ScrollableProduct({
    required this.image,
    required this.creatorName,
    required this.ownerName,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image(
            image: AssetImage(image),
            height: 280,
          ),
        ),
        Positioned(
          top: 200,
          right: 0,
          child: FixedInfoProductCard(
              image: image,
              creatorName: creatorName,
              ownerName: ownerName,
              price: price,
              isFavorite: isFavorite),
        ),
      ],
    );
  }
}
