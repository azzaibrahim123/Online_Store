import 'package:flutter/material.dart';

class CategorySection_HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(
                  'https://redlinead.com.sa/wp-content/uploads/2020/08/063-2.jpg',
                  width: 100,
                  height: 100,
                ),
                Text(
                  'Food,',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
