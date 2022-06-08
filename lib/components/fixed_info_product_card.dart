import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:nft_app/components/price_card.dart';
import 'package:nft_app/components/creator_and_owner_card.dart';

class FixedInfoProductCard extends StatefulWidget {
  const FixedInfoProductCard({Key? key}) : super(key: key);

  @override
  State<FixedInfoProductCard> createState() => _FixedInfoProductCardState();
}

class _FixedInfoProductCardState extends State<FixedInfoProductCard> {
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 250,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(
          const Radius.circular(30),
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
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    'The Unkown',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                PriceCard(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text('Creator'),
                const SizedBox(
                  width: 60,
                ),
                const Text('Owner'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CreatorAndOwnderCard(),
                const SizedBox(
                  width: 5,
                ),
                CreatorAndOwnderCard(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _placeBidButton(),
                Stack(
                  children: [
                    IconButton(
                      color: Colors.orange,
                      icon: Icon(isFavourite
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart),
                      onPressed: () => {
                        setState(() {
                          isFavourite = !isFavourite;
                        })
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _placeBidButton() {
  return ElevatedButton(
    onPressed: () => {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(darkBlueColor),
    ),
    child: const Text(
      'Place a Bid',
      style: TextStyle(
        color: whiteColor,
      ),
    ),
  );
}
