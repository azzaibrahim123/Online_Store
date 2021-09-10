import 'package:flutter/material.dart';
import 'package:online_store/shared_component/customButton.dart';
import 'package:online_store/shared_component//textformfield.dart';
import 'package:online_store/const/color.dart';

import 'components/fields.dart';


class EditProfile extends StatelessWidget {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: darkBurble,
            ),
            FieldsProfile(),

          ],
        ),
      ),
    ));
  }
}
