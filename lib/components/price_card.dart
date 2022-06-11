import 'package:flutter/material.dart';
import '../colors.dart';

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
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
          '$priceETH ETH',
          style: const TextStyle(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
