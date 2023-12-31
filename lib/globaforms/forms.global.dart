import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool obsecure;
  
  const TextFormGlobal({super.key,required this.title,required this.controller,required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20)
      ,height: 50,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 7
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(6)
    ),
    child:TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: obsecure,
      decoration: InputDecoration(
      hintText:title,
      border:InputBorder.none,
      contentPadding: const EdgeInsets.all(0)
      ),
    ));
  }
}