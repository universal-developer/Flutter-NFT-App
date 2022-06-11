import 'package:flutter/material.dart';
import '../colors.dart';

class CreatorCard extends StatelessWidget {
  String creatorName;
  String profilePicture;

  CreatorCard({
    required this.profilePicture,
    required this.creatorName,
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
              creatorName,
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
