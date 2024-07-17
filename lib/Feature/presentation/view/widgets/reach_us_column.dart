import 'package:abswebsite/Feature/presentation/view/widgets/contact_details.dart';
import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Reachus extends StatelessWidget {
  const Reachus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reach us',
          style: TextStyle(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
        ),
        const Contactdetails(
          image: 'assets/images/phone.png',
          text: '01001119755 / 01148893165 ',
        ),
        const Contactdetails(
          image: 'assets/images/message.png',
          text: 'info@miningeg.com / miningeg.sales01@gmail.com  ',
        ),
        const Contactdetails(
          image: 'assets/images/map.png',
          text: '14 El-Obour Buildings , Salah Salem , Cairo , Egypt',
        )
      ],
    );
  }
}
