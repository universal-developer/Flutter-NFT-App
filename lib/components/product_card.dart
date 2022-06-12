import 'package:flutter/material.dart';
import 'package:nft_app/components/product_info_card.dart';

class ProductCard extends StatelessWidget {
  String productName;
  String productPhoto;
  String ownerName;
  String profilePicture;
  double price;

  ProductCard({
    required this.productName,
    required this.productPhoto,
    required this.ownerName,
    required this.profilePicture,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: Stack(
        children: [
          Positioned(
            top: 120,
            child: SizedBox(
              child: ProductInfoCard(
                  productName: productName,
                  ownerName: ownerName,
                  profilePicture: profilePicture,
                  price: price),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(
              image: AssetImage(productPhoto),
              height: 160,
              width: 160,
            ),
          ),
        ],
      ),
    );
  }
}
