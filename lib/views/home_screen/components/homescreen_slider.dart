import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carsoul_HomeView extends StatelessWidget {
  int index = 0;
  List<String> images = [
    'https://m.media-amazon.com/images/S/assets.wholefoodsmarket.com/content/b5/68/d0e7dfed477d8afdb7234aeaab11/wfm-og-homepage-rectangle.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGODsfOS7XSevvmH_1zhgnZgICntzveOiiqA&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(initialPage: 0, autoPlay: true, height: 180),
      itemBuilder: (BuildContext context, int index, int realIndex) =>
          Container(
        width: double.infinity,
        child: Image.network(images[index]),
      ),
      itemCount: images.length,
    );
  }
}
