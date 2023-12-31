import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firstapplication/globaforms/forms.global.dart';
import 'package:firstapplication/globalecolors/globalcol.dart';
import 'package:firstapplication/mainPage.dart';
import 'package:firstapplication/wigets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailcontroller=TextEditingController();
  final TextEditingController passwordcontroller=TextEditingController();
  
  LoginPage({super.key});
 
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  // If the user is already signed-in, use it as initial data
  initialData: FirebaseAuth.instance.currentUser,
  builder: (context, snapshot) {
    // User is not signed in
    if (!snapshot.hasData) {
      return SignInScreen();
    }

    // Render your application if authenticated
    return MainPage();
  },
);
}}
/*
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(  
            height:double.maxFinite , 
            alignment:AlignmentDirectional.center ,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child:Text(
                      'Login!',
                      style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.bold),
                    ))
                    ,const SizedBox(height: 20,),
                     Text(
                      'Login to your account',
                      style: TextStyle(fontSize: 15
                      ,color: Globalcolors.backgroundcolor),
                    ),
                    SizedBox(height: 15,),
                    TextFormGlobal(title:"username",controller:emailcontroller ,obsecure:false),
                    SizedBox(height: 15,),
                    TextFormGlobal(title:"password",controller:passwordcontroller,obsecure:true)
                    ,SizedBox(height: 15,)
                    ,Buttonsub()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }*/
