import 'package:flutter/material.dart';

class TopSeller extends StatefulWidget {
  TopSeller({Key? key}) : super(key: key);

  @override
  State<TopSeller> createState() => _TopSellerState();
}

class _TopSellerState extends State<TopSeller> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/nfts/second_nft.png'),
          ),
        ),
      ],
    );
  }
}
