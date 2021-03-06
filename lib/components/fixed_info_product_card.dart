import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../colors.dart';
import '../components/creator_card.dart';
import '../components/price_card.dart';
import '../components/owner_card.dart';

class FixedInfoProductCard extends StatelessWidget {
  String image;
  String itemName;
  String creatorName;
  String ownerName;
  double price;
  bool isFavorite;

  FixedInfoProductCard({
    required this.image,
    required this.itemName,
    required this.creatorName,
    required this.ownerName,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {print('Fixed Info Product Card')},
      child: Container(
        height: 170,
        width: 250,
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
                    child: Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  PriceCard(priceETH: price)
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text('Creator'),
                  SizedBox(
                    width: 50,
                  ),
                  Text('Owner'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CreatorCard(
                      profilePicture: 'assets/nfts/first_nft.png',
                      creatorName: creatorName),
                  const SizedBox(
                    width: 30,
                  ),
                  OwnerCard(
                      profilePicture: 'assets/nfts/first_nft.png',
                      ownerName: ownerName)
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
                    children: const [
                      MyIconButton(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyIconButton extends StatefulWidget {
  const MyIconButton({Key? key}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.orange,
      icon:
          Icon(isFavourite ? CupertinoIcons.heart_fill : CupertinoIcons.heart),
      onPressed: () => {
        setState(() {
          isFavourite = !isFavourite;
        })
      },
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
