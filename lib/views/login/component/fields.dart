import 'package:flutter/material.dart';
import 'package:online_store/shared_component/textformfield.dart';

class FieldsLogin extends StatelessWidget {

  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTextformfield(
          validate: (value){
            if(value.isEmpty){
              return' please you must enter your Name';
            }
          },
          hint: 'enter your name',
          label: 'Name',
          controller: emailController,
        ),
        BuildTextformfield(
          isSecure: true,
          controller: passController,
          validate: (value){
            if(value.isEmpty){
              return'please you must enter your password ';
            }
          },
          hint: 'Enter your Password',
          label: 'Password',
        )

      ],
    );
  }
}
