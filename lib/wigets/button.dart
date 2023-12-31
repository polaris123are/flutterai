import 'package:firstapplication/globalecolors/globalcol.dart';
import 'package:flutter/material.dart';

class Buttonsub extends StatelessWidget {
  const Buttonsub({super.key ,});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        print("hi");
      },
      child: Container(width: double.infinity,height: 50,
      alignment: Alignment.center,
        decoration: BoxDecoration(color: Globalcolors.backgroundcolor
      ,borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          
        )
      ]),
      child: Text("Submit",style: TextStyle(
        color: Colors.white,
        fontSize: 15
      ),),
      ),
    );
  }
}