import 'package:firstapplication/activitypage.dart';
import 'package:flutter/material.dart';

class ContainerActivity extends StatelessWidget {
  const ContainerActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.home),),
          ]),

          Expanded(
            child: TabBarView(children: [
              Activitypage(),
              Container(
                child:Text("hi"),
              ),
            Container(
                child:Text("ba"),
              )
            ]),
          )
            
          ],
        ),
      ),
    );
  }
}