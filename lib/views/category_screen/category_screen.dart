import 'package:flutter/material.dart';
import 'package:online_store/shared_component/shared_appbar.dart';

class CategoryScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body: ListView.builder(
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://media.npr.org/assets/img/2020/06/10/gettyimages-200199027-001_wide-3ff0f063a2bf1ab01550d3508c816bc43009d215.jpg?s=1400',
                width: 100,
                height: 100,
              ),
              Text('Sports'),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ))
            ],
          ),
        ));
  }
}
