import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';

class CreatorAndOwnderCard extends StatefulWidget {
  const CreatorAndOwnderCard({Key? key}) : super(key: key);

  @override
  State<CreatorAndOwnderCard> createState() => _CreatorAndOwnderCardState();
}

class _CreatorAndOwnderCardState extends State<CreatorAndOwnderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: lightGreyColor,
        borderRadius: const BorderRadius.all(
          const Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 10,
              backgroundImage: const AssetImage('assets/nfts/first_nft.png'),
            ),
            const SizedBox(width: 2),
            const Text(
              'iamjackrider',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
