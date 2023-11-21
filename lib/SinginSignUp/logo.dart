import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
      child: Image.asset("asstes/logo.png",width: 350.0,
        height: 350.0,),

    ),
    );
  }
}
