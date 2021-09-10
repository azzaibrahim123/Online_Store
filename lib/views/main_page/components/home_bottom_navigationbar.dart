
import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';

class Home_BottomNavigationBar extends StatefulWidget {
  @override
  _Home_BottomNavigationBarState createState() => _Home_BottomNavigationBarState();
}

class _Home_BottomNavigationBarState extends State<Home_BottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedItemColor: darkBurble,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        print(index);
        setState(() {
          index = currentIndex;

        });
      },
      iconSize: 20,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,

            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category,

            ),
            label: 'Category'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outlined,

            ),
            label: 'Favourite'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,

            ),
            label: 'settings'),
      ]);
  }
}
