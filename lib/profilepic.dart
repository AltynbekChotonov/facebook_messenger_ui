import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String imageLink;

  const ProfilePic({required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: Image.asset(imageLink),
      ),
    );
  }
}
