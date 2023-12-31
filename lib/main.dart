import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

import 'package:firstapplication/ajoutactivitypage.dart';
import 'package:firstapplication/firebase_options.dart';
import 'package:firstapplication/loginpage.dart';
import 'package:firstapplication/mainPage.dart';

import 'package:firstapplication/profilePage.dart';
import 'package:firstapplication/welcompage.dart';


import 'package:firstapplication/wigets/containeractivity.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(home:WelcomPage()) ;
  }
}
