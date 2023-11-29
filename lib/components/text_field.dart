import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{

  const MyTextField({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override 
  Widget build(BuildContext context){
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration:  InputDecoration(
        enabledBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue),
        ),
    focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue),
      ),
        fillColor: Colors.lightBlue.shade200,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
    ),
    );
  }
}


