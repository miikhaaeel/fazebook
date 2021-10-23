import 'package:cached_network_image/cached_network_image.dart';
import 'package:fazebook/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const ProfileAvatar({Key? key, required this.imageUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        Positioned(
          bottom: -2.0,
          right: -2.0,
          child: Container(
            height: 14,
            width: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.online,
              border: Border.all(width: 2, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
