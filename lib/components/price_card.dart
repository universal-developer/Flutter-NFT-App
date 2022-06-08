import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';

class PriceCard extends StatelessWidget {
  double priceETH;

  PriceCard({
    required this.priceETH,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: purpleGradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
          '$priceETH ETH',
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
