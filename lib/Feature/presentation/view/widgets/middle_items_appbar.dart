import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Middleitemsappbar extends StatelessWidget {
  const Middleitemsappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Text(
              'Products',
              style: TextStyle(
                color: Colors.white,
                fontSize: getResponsiveFontSize(context, fontSize: 18),
                fontFamily: 'Poppins',
              ),
            ),
            const Icon(
              Icons.arrow_downward_sharp,
              color: Colors.white,
            )
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          'Packing',
          style: TextStyle(
            color: Colors.white,
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          'Quality Control',
          style: TextStyle(
            color: Colors.white,
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}
