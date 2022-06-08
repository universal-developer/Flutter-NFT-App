import 'package:flutter/material.dart';
import 'package:nft_app/components/fixed_info_product_card.dart';

class ScrollableProduct extends StatefulWidget {
  const ScrollableProduct({Key? key}) : super(key: key);

  @override
  State<ScrollableProduct> createState() => _ScrollableProductState();
}

class _ScrollableProductState extends State<ScrollableProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: const Image(
            image: const AssetImage('assets/nfts/first_nft.png'),
            height: 280,
          ),
        ),
        Positioned(
          top: 200,
          right: 0,
          child: FixedInfoProductCard(),
        ),
      ],
    );
  }
}
