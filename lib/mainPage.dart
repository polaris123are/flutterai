import 'package:firstapplication/ajoutactivitypage.dart';
import 'package:firstapplication/profilePage.dart';
import 'package:firstapplication/wigets/containeractivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  // This widget is the root of your application.
  int currentindex=0;
  List pages=[ContainerActivity(),AjoutActivityPage(),Profile()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: pages[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (int newindex){
            setState(() {
              currentindex=newindex;
            });
          },
        items: [BottomNavigationBarItem(icon: Icon(Icons.sports),label:"activities"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label:"ajouter"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"profile")],
        ),
      );

      
  }
}