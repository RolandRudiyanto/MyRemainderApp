import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1ba0e2),
      appBar: AppBar(
        title: Text("About Us".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
        leading: Image.asset("asstes/logo.png",width: 300.0,
          height: 300.0,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    body: Center(
      child: Text("Halo"),
    ),
    );
  }
}
