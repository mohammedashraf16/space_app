import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {super.key, required this.color, required this.image});

  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: color,
      child: Image.asset(image),
    );
  }
}