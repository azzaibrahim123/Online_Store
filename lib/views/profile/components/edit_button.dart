import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';
import 'package:online_store/shared_component/customButton.dart';

class ProfileEditButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomButton(
        color: darkBurble,
        text: 'Edit Profile',
        radius: 10,
        onTap: () {

          // if (formkey.currentState.validate()) {
          //   print(emailController.text);
          //   print(phoneController.text);
          // }
        },
      ),
    );
  }
}
