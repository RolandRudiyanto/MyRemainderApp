
import 'package:flutter/material.dart';
import 'package:uas/Model/user.dart';
import 'package:uas/SinginSignUp/login.dart';
import 'package:uas/SinginSignUp/logo.dart';
import 'package:uas/SinginSignUp/provile.dart';
import 'package:uas/SinginSignUp/sing_in.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
            canvasColor: Colors.transparent
          ),
          debugShowCheckedModeBanner: false,
          home: Login(),
        );
      }
  }