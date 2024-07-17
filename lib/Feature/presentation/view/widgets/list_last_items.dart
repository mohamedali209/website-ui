import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Listlast extends StatelessWidget {
  const Listlast({
    super.key,
    this.title = '',
    this.title1 = '',
    this.title2 = '',
    this.title3 = '',
    this.title4 = '',
    this.title5 = '',
    this.title6 = '',
  });

  final String title;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            style:  TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: getResponsiveFontSize(context, fontSize: 16),
                fontWeight: FontWeight.w600),
          ),
        if (title.isNotEmpty)
          const SizedBox(
            height: 10,
          ),
        if (title1.isNotEmpty)
          Text(
            title1,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        if (title2.isNotEmpty)
          Text(
            title2,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        if (title3.isNotEmpty)
          Text(
            title3,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        if (title4.isNotEmpty)
          Text(
            title4,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        if (title5.isNotEmpty)
          Text(
            title5,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        if (title6.isNotEmpty)
          Text(
            title6,
            style:  TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
      ],
    );
  }
}
