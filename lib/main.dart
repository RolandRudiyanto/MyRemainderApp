
import 'package:flutter/material.dart';
import 'package:uas/Model/user.dart';
import 'package:uas/SinginSignUp/about_us.dart';
import 'package:uas/SinginSignUp/login.dart';
import 'package:uas/SinginSignUp/logo.dart';
import 'package:uas/SinginSignUp/provile.dart';
import 'package:uas/SinginSignUp/sing_in.dart';
import 'package:uas/View/home.dart';

import 'menu.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
            canvasColor: Colors.transparent,
            primaryColor: Color(0xff1ba0e2),
          ),
          debugShowCheckedModeBanner: false,
          home: Menu(),
        );
      }
  }