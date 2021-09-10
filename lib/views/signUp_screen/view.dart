import 'package:flutter/material.dart';
import 'package:online_store/shared_component/customButton.dart';
import 'package:online_store/views/login/component/fields.dart';
import 'component/signup_row.dart';

class SignUpView extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Sign Up to continue',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            FieldsLogin(),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                if (formkey.currentState.validate()) {
                  print(nameController.text);
                  print(emailController.text);
                  print(passwordController.text);
                  print(phoneController.text);
                }
              },
              text: 'Sign Up',
            ),
            SignUp_row(),
          ],
        ),
      ),
    );
  }
}
