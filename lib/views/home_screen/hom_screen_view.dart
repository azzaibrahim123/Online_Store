import 'package:flutter/material.dart';

import 'components/category_homescreen.dart';
import 'components/homescreen_products.dart';
import 'components/homescreen_slider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Carsoul_HomeView(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 25),
              ),
            ),
            CategorySection_HomeView(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Products',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ProductHomeView(),
          ],
        ),
      ),
    );
  }
}
