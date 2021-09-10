//السيرش هنا ايقونه ولا زرار ولا تيكست فيلد

import 'package:flutter/material.dart';

import 'components/favourite_listview.dart';

class FavouriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FavouriteListView(),
    );
  }
}
