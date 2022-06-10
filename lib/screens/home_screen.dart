import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';
import 'package:nft_app/components/fixed_info_product_card.dart';
import 'package:nft_app/components/scrollable_product.dart';
import 'package:nft_app/components/top_seller.dart';

bool isFavourite = true;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  const Image(
                    image: const AssetImage('assets/logo.png'),
                    width: 50,
                  ),
                  const Text(
                    'nftApp',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(CupertinoIcons.bell),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Trending',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ScrollableProduct(
                        image: 'assets/nfts/first_nft.png',
                        creatorName: 'whoAmI',
                        ownerName: 'whoAmI',
                        price: 2.2,
                        isFavorite: false),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                        image: 'assets/nfts/second_nft.png',
                        creatorName: 'whoAmI',
                        ownerName: 'adadadadda',
                        price: 2.2,
                        isFavorite: false),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                        image: 'assets/nfts/third_nft.png',
                        creatorName: 'whoAmI',
                        ownerName: 'adadadadda',
                        price: 2.2,
                        isFavorite: false),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                        image: 'assets/nfts/fourth_nft.png',
                        creatorName: 'whoAmI',
                        ownerName: 'adadadadda',
                        price: 2.2,
                        isFavorite: false),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                        image: 'assets/nfts/fifth_nft.png',
                        creatorName: 'whoAmI',
                        ownerName: 'adadadadda',
                        price: 2.2,
                        isFavorite: false),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Top Seller',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              TopSeller(),
            ],
          ),
        ),
      ),
    );
  }
}
