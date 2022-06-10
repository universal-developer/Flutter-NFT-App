import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';
import 'package:nft_app/components/price_card.dart';

class TopSeller extends StatelessWidget {
  String profilePicture;
  String name;
  double price;

  TopSeller({
    required this.profilePicture,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {print('Top Seller')},
      child: Container(
        width: 260,
        height: 75,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(
            const Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(profilePicture),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                    PriceCard(priceETH: price),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
