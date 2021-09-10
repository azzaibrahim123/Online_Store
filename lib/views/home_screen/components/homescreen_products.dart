import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_store/const/color.dart';

//هنا مشكله ال row مش بيظهر

class ProductHomeView extends StatelessWidget {
  Widget renderSeparator() {
    return Text("This is Separator");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: GridView.builder(
        itemCount: 8,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) => Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network('https://www.computerhope.com/jargon/d/device.jpg'),
              Text('Apple MacBook Pro',
                  style: TextStyle(fontSize: 15, color: darkBurble)),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      '44500',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
