import 'package:flutter/material.dart';
import 'package:nft_app/components/owner_card.dart';
import 'package:nft_app/components/price_card.dart';
import '../colors.dart';

class ProductInfoCard extends StatelessWidget {
  String productName;
  String ownerName;
  String profilePicture;
  double price;

  ProductInfoCard({
    required this.productName,
    required this.ownerName,
    required this.profilePicture,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(
          color: greyColor,
        ),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 10,
          left: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                productName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: ownerName.length * 15,
                child: OwnerCard(
                    profilePicture: profilePicture, ownerName: ownerName),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.center,
              child: PriceCard(priceETH: price),
            ),
          ],
        ),
      ),
    );
  }
}
