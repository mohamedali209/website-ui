import 'package:abswebsite/Feature/presentation/view/widgets/adaptive_layout.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/customappbar.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/middlecontainer.dart';
import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Abswebsite());
}

class Abswebsite extends StatelessWidget {
  const Abswebsite({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AdaptiveLayout(
          mobileLayout: (context) => const Desktoplayout(),
          tabletLayout: (context) => const Desktoplayout(),
          desktopLayout: (context) => const Desktoplayout(),
        ));
  }
}

class Desktoplayout extends StatelessWidget {
  const Desktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/11.png'),
                fit: BoxFit.cover,
              )),
              child: const Column(
                children: [
                  Customappbar(),
                ],
              ),
            ),
            const Middlecontainer(),
          ],
        ),
      ),
    );
  }
}
