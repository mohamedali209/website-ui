import 'package:abswebsite/Feature/presentation/view/model/Box_item_model.dart';
import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class BoxitemWidget extends StatelessWidget {
  final Boxitem boxitem;

  const BoxitemWidget({
    super.key,
    required this.boxitem,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff242424),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              boxitem.image,
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              boxitem.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20),
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                boxitem.subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 14),
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFF18638),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Read more',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: getResponsiveFontSize(context, fontSize: 16),
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Image.asset('assets/images/Arrow 2.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
