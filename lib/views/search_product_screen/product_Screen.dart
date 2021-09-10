import 'package:flutter/material.dart';
import 'package:online_store/views/home_screen/hom_screen_view.dart';

import 'components/search_product_list.dart';

class SearchProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'Search',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            TextField(),
            SearchProductList()
          ],
        ));
  }
}
