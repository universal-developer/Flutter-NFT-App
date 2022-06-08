import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';

class PriceCard extends StatefulWidget {
  const PriceCard({Key? key}) : super(key: key);

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: purpleGradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: const Text(
          'ETH 2.25',
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
