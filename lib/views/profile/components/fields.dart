import 'package:flutter/material.dart';

import 'package:online_store/const/color.dart';
import 'package:online_store/shared_component/textformfield.dart';
class FieldsProfile extends StatelessWidget {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTextformfield(
          validate: (value){
            if(value.isEmpty){
              return" you must enter mail";
            }
          },
            controller: emailController,
            type: TextInputType.emailAddress,
            perfix: Icon(Icons.email,color: darkBurble,),
            hint: 'Email',

        ),
       BuildTextformfield(
         validate: (value){
           if(value.isEmpty){
             return" you must enter phone";
           }
         },
            controller: phoneController,
            hint: 'Phone',
            type: TextInputType.number,
            perfix: Icon(Icons.phone,color: darkBurble,),
          ),

      ],
    );
  }
}
