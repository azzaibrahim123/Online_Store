import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        thickness: 3,
      ),
      padding: EdgeInsets.all(15),
      scrollDirection: Axis.vertical,
      itemCount: 2,
      itemBuilder: (context, index) => Row(
        children: [
          Image.network(
            'https://ae01.alicdn.com/kf/H13cc18a013224253a33bd56d3ac57b17e/Original-Xiaomi-Mi-Headphone-Karaoke-Version-High-Sensitivity-MIC-Game-Headset-HD-Audio-6-Sound-Variation.jpg',
            width: 150,
            height: 150,
          ),
          Expanded(
            child: Column(
              children: [
                Text('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('12542'),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
