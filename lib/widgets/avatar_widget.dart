import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  final double size;

  const AvatarWidget({super.key, required this.image, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9999),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: size,
        height: size,
      ),
    );
  }
}
