import 'package:abswebsite/Feature/presentation/view/model/Box_item_model.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/adaptive_layout.dart';
import 'package:abswebsite/Feature/presentation/view/widgets/box_itemwidget.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Boxitem> items = [
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Silica Sand',
        subtitle:
            'Essential mineral for diverse construction and industrial applications',
      ),
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Silica Flour',
        subtitle: 'Finely ground silica, perfect for high-performance concrete',
      ),
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Salt',
        subtitle:
            'Purity meets flavor, sourced to elevate culinary experiences worldwide',
      ),
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Gypsum',
        subtitle:
            'Versatile mineral, essential in construction, agriculture, and industrial processes.',
      ),
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Calcium Carbonate',
        subtitle:
            'Key ingredient in industries, from pharmaceuticals to construction materials',
      ),
      Boxitem(
        image: 'assets/images/Frame 1000007104.png',
        title: 'Flint Pebbles',
        subtitle:
            'Natural, durable stones ideal for grinding and polishing applications',
      ),
    ];

    return AdaptiveLayout(
      mobileLayout: (_) => buildGridView(1, items),
      tabletLayout: (_) => buildGridView(2, items),
      desktopLayout: (_) => buildGridView(3, items),
    );
  }

  Widget buildGridView(int crossAxisCount, List<Boxitem> items) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 0.99, // Adjust the aspect ratio as needed
      ),
      itemCount: items.length, // Number of items in the grid
      itemBuilder: (context, index) {
        return BoxitemWidget(boxitem: items[index]);
      },
    );
  }
}