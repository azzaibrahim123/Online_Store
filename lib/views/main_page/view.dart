import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';
import 'package:online_store/views/category_screen/category_screen.dart';
import 'package:online_store/views/favourite_screen/favourite_screen.dart';
import 'package:online_store/views/home_screen/hom_screen_view.dart';
import 'package:online_store/views/settings_screen/settings_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeView(),
    CategoryScreenView(),
    FavouriteView(),
    SettingsScreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: darkBurble,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            currentIndex = index;
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
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
