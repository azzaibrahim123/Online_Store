import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';
import 'package:online_store/shared_component/customButton.dart';

import 'package:online_store/views/login/component/fields.dart';

import 'package:online_store/views/signUp_screen//view.dart';

class Login extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Form(
      key: formKey,
      child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 100,
            horizontal: 20,
          ),
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(""),
              TextButton(
                child: Text(
                  'forget password ?',
                  style: TextStyle(color: darkBurble),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpView()));
                },
              ) //
            ]),
            FieldsLogin(),
            CustomButton(
              text: 'Login',
              onTap: () {},
            ),
            Row(
              children: [
                Text('Dont have an account ?'),
                TextButton(
                    onPressed: () {
                      //هنا مشكله بردو
                    },
                    child: Text(
                      'Sign Up ',
                      style: TextStyle(color: darkBurble),
                    ))
              ],
            )
          ]),
    )));
  }
}
