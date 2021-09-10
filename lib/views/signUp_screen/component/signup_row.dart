
import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';
import 'package:online_store/views/login/view.dart';

class SignUp_row extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Already have an account'),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
              'login',
              style: TextStyle(color: darkBurble),
            ))
      ],
    );
  }
}
