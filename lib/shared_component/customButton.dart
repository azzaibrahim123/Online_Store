import 'package:flutter/material.dart';
import 'package:online_store/const/color.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;

  final String text;
   final Color color;
  final double radius;
  final Color textColor;

 CustomButton({
    Key key,
    this.onTap,
this.textColor,
    this.text,
    this.color,
    this.radius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
         height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.1,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor ?? Colors.white),
        )),
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 30,
            ),
          ],
          borderRadius: BorderRadius.circular(radius),
          color: color ?? darkBurble,
        ),
      ),
    );
  }
}
