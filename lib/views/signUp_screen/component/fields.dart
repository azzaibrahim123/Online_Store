import 'package:flutter/material.dart';
import 'package:online_store/shared_component/textformfield.dart';

class FieldsSignUp extends StatelessWidget {
 final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

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
          controller: nameController,
        ),
        BuildTextformfield(
          validate: (value){
            if(value.isEmpty){
              return' please you must enter your Email';
            }
          },
          hint: 'enter your email',
          label: 'Email',
          controller: emailController,
        ),
        BuildTextformfield(
          validate: (value){
            if(value.isEmpty){
              return' please you must enter your Password';
            }
          },
          suffix: Icon(Icons.visibility_off),
          hint: 'enter your password',
          label: 'Password',
          controller: passwordController,
        ),
        BuildTextformfield(
          validate: (value){
            if(value.isEmpty){
              return' please you must enter your Phone';
            }
          },
          hint: 'enter your phone',
          label: 'phone',
          controller: phoneController,
        ),
      ],
    );
  }
}
