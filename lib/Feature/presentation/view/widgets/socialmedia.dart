import 'package:flutter/material.dart';

class Socialmedia extends StatelessWidget {
  const Socialmedia({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFF18638),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: 11.3,
        height: 21.2,
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
