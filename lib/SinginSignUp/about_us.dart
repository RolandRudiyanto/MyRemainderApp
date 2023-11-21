import 'package:flutter/material.dart';
import 'package:uas/Model/user.dart';

class AboutUs extends StatefulWidget {
  final User user;
  AboutUs({required this.user});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Edit Prifile".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
        leading: Image.asset("asstes/logo.png",width: 300.0,
          height: 300.0,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text("Hallo, ${widget.user.username}"),
      ),
    );
  }
}
