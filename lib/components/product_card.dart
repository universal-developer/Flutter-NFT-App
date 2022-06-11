import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';
import 'package:nft_app/components/owner_card.dart';
import 'package:nft_app/components/price_card.dart';

class ProductCard extends StatelessWidget {
  String productName;
  String ownerName;
  String profilePicure;
  String productPicture;
  double price;

  ProductCard({
    required this.productName,
    required this.ownerName,
    required this.profilePicure,
    required this.productPicture,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Stack(
        children: [
          Positioned(
            top: 100,
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 160,
              height: 145,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 70,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: ownerName.length * 11,
                            child: OwnerCard(
                                profilePicture: profilePicure,
                                ownerName: ownerName),
                          ),
                          Container(
                            child: Text(
                              productName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: PriceCard(priceETH: price),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(
              image: AssetImage(productPicture),
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}
