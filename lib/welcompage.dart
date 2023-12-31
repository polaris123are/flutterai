import 'dart:async';

import 'package:firstapplication/globalecolors/globalcol.dart';
import 'package:firstapplication/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {Get.to(LoginPage()); });
    return Scaffold(backgroundColor: Globalcolors.backgroundcolor,
    body: Center(child: Text("Logo",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),),);
  
  }
}