import 'package:flutter/material.dart';
import 'package:uas/View/history.dart';
import 'package:uas/View/home.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedItem=0;
  static List<Widget> _page=<Widget>[
    Home(),
    History()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
            label: "History",
          )
        ],
        currentIndex: _selectedItem,
        onTap: (setValue){
            setState(() {
          _selectedItem=setValue;
            });
        },
      ),
    );
  }
}
