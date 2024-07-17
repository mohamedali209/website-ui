import 'package:abswebsite/Feature/presentation/view/widgets/middle_items_appbar.dart';
import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.1,
      width: double.infinity,
      color: const Color(0x52000000),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/photo_2024-01-02_20-12-26-removebg-preview 3.png',
              height: screenSize.height * 0.08, // Adjust the height as needed
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Middleitemsappbar(),
                  ],
                ),
              ),
            ),
            if (screenSize.width >= 800) // Only show on desktop layout
              Row(
                children: [
                  Text(
                    'EN',
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 18),
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_downward_sharp,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 32),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF18638),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SizedBox(
                      width: screenSize.width * 0.12,
                      height: screenSize.height * 0.07,
                      child: Center(
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: getResponsiveFontSize(context, fontSize: 18),
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
