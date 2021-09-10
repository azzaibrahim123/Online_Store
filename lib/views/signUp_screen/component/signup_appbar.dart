import 'package:flutter/material.dart';
import 'package:online_store/views/login/view.dart';

class SignUp_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Login()));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 35,
            color: Colors.black,
          )),
      centerTitle: true,
      title: Text(
        'Sign Up',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
