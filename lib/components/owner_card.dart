import 'package:flutter/material.dart';
import 'package:nft_app/colors.dart';

class OwnerCard extends StatelessWidget {
  String ownerName;
  String profilePicture;

  OwnerCard({
    required this.profilePicture,
    required this.ownerName,
  });

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
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(profilePicture),
            ),
            const SizedBox(width: 2),
            Text(
              ownerName,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
