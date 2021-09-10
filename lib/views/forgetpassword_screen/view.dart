import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';
import 'package:online_store/shared_component/customButton.dart';
import 'package:online_store/shared_component/textformfield.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class Forget extends StatelessWidget {
  var pinController=TextEditingController();
  var emailController = TextEditingController();
 var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        centerTitle: true,
        title: Text(
          'Forgotten Password',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Form(
        key:formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [
            BuildTextformfield(
              controller: emailController,
              hint: 'Email',
              type: TextInputType.emailAddress,
              validate: (value) {
                if (value.isEmpty) {
                  return ' please  you must enter ypur mail';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: CustomButton(
                onTap: () {
                  if(formKey.currentState.validate()){
                    print(emailController.text);
                  }
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Center(
                                child: Text(
                              'Confirm Code ',
                            )),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                PinCodeTextField(
                              controller:pinController ,
                                  keyboardType: TextInputType.number,
                                    length: 4,
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    pinTheme: PinTheme(
                                      fieldHeight: 70,
                                      fieldWidth: 50,
                                      inactiveFillColor: Colors.grey,
                                      activeColor: Colors.grey,
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(10),
                                    ), appContext: context, onChanged: (String value) {  },),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'You can resend code after ',
                                          style: TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: ' 60sec',
                                          style: TextStyle(color: darkBurble))
                                    ],
                                  ),
                                )
                              ],
                            ),
                            actions: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CustomButton(
                                  onTap: () {},
                                  text: 'Confirm',

                                  radius: 10,
                                  color: darkBurble,
                                ),
                              )
                            ],
                          ));
                },


                text: 'Reset your Password',

              ),
            )
          ],
        ),
      ),
    );
  }
}
