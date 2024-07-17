import 'package:abswebsite/Feature/presentation/view/widgets/gridview_.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/last_container.dart';
import 'package:abswebsite/utils/size_config.dart';
import 'package:flutter/material.dart';

class Middlecontainer extends StatelessWidget {
  const Middlecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
           Text(
            'Products',
            style: TextStyle(
                color: Colors.white,
                fontSize: getResponsiveFontSize(context, fontSize: 38),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 5,
              width: 50,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: const GridViewExample(),
          ),
          const SizedBox(
            height: 50,
          ),
          const Lastcontainer(),
        ],
      ),
    );
  }
}
