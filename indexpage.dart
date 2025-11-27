import 'package:flutter/material.dart';
import 'Accountpage.dart';
import 'Homepage.dart';
import 'Searchpage.dart';
import 'Settingpage.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar=0;
  List<Widget>_pages=[
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),

  ];
  String _gettitle(int index){
    switch (index){
      case 0:
        return 'Page Home';
      case 1:
        return 'Page search';
      case 2:
        return 'Page settings';
      case 3:
        return 'Page account';
      case 4:
        return 'Categories';
      default :
        return 'Page';
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(_gettitle(_bottomNavbar)),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,

      ),
      body: IndexedStack(
        index: _bottomNavbar,
        children:_pages ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        onTap: (index){
          setState(() {
            _bottomNavbar=index;
          });
        },
        unselectedItemColor: Colors.deepPurple,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'settings', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'account', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}