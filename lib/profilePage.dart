import 'package:firstapplication/globaforms/forms.global.dart';
import 'package:firstapplication/wigets/button.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final TextEditingController login=TextEditingController();
  final TextEditingController password=TextEditingController();
  final TextEditingController adrress=TextEditingController();
  final TextEditingController codepostale=TextEditingController();
  final TextEditingController datedenaissance=TextEditingController();
  final TextEditingController ville=TextEditingController();
   Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ajout de activiter")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormGlobal(title: "login", controller: login, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "password", controller: password, obsecure: true),
            SizedBox(height: 15,),
            TextFormGlobal(title: "adrress", controller: adrress, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "codepostale", controller: codepostale, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "datedenaissance", controller: datedenaissance, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "ville", controller: ville, obsecure: false),
            SizedBox(height: 15,),
            Buttonsub()
          ],
        ),
      )
    );
  }
}