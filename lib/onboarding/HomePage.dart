import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Components/CartComponents.dart';
import 'Components/CategoryComponents.dart';
import 'Components/ProfileComponents.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List WeidgetsItem = [
    CategoryComponents(),
    CartComponents(),
    ProfileComponents(),
  ];

  int _selectedIndex = 0;


  void ComponentsChange(int value){
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,

        onTap: (value){
          ComponentsChange(value);
        },
      ),

      body: WeidgetsItem.elementAt(_selectedIndex) ,

    );
  }
}
