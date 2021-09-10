import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:online_store/views/login/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
// home: Text('AA'),
    );
  }
}
