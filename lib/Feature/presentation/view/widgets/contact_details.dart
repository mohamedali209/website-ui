import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Contactdetails extends StatelessWidget {
  const Contactdetails({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 24, width: 24, child: Image.asset(image)),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          height: 24,
          child: Text(
            text,
            style:  TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: getResponsiveFontSize(context, fontSize: 16)),
          ),
        )
      ],
    );
  }
}
