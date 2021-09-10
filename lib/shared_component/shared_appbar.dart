import 'package:flutter/material.dart';

Widget appbar() => AppBar(
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            size: 20,
            color: Colors.black,
          ),
          onPressed: () {},
        )
      ],
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
