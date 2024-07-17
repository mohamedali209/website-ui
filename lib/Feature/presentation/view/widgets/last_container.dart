import 'package:abswebsite/Feature/presentation/view/widgets/adaptive_layout.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/list_last_items.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/reach_us_column.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/socialmedia.dart';
import 'package:flutter/material.dart';

class Lastcontainer extends StatelessWidget {
  const Lastcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      tabletLayout: (_) => buildDesktopLayout(context),
      mobileLayout: (_) => buildMobileLayout(context),
      desktopLayout: (_) => buildDesktopLayout(context),
    );
  }

  Widget buildMobileLayout(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/last.png'),
          const SizedBox(height: 10),
          const SizedBox(
            height: 40,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Socialmedia(image: 'assets/images/facebook.png'),
                Socialmedia(image: 'assets/images/insta.png'),
                Socialmedia(image: 'assets/images/twiiter.png'),
                Socialmedia(image: 'assets/images/in.png'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Listlast(
                    title: 'Company',
                    title1: 'Home',
                    title2: 'About Us',
                    title3: 'Products',
                    title4: 'Packing',
                    title5: 'Quality control',
                    title6: 'Contact Us',
                  ),
                  SizedBox(height: 20),
                  Listlast(
                    title: 'Legal',
                    title1: 'Privacy Policy',
                    title2: 'Terms & Conditions',
                    title3: 'Terms of uses',
                  ),
                  SizedBox(height: 20),
                  Reachus(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDesktopLayout(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/last.png'),
              const SizedBox(height: 10),
              const SizedBox(
                height: 40,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Socialmedia(image: 'assets/images/facebook.png'),
                    Socialmedia(image: 'assets/images/insta.png'),
                    Socialmedia(image: 'assets/images/twiiter.png'),
                    Socialmedia(image: 'assets/images/in.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          const Listlast(
            title: 'Company',
            title1: 'Home',
            title2: 'About Us',
            title3: 'Products',
            title4: 'Packing',
            title5: 'Quality control',
            title6: 'Contact Us',
          ),
          const Listlast(
            title: 'Legal',
            title1: 'Privacy Policy',
            title2: 'Terms & Conditions',
            title3: 'Terms of uses',
          ),
          const Reachus(),
        ],
      ),
    );
  }
}

