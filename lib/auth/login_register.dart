import 'package:flutter/material.dart';
import 'package:bank_test/pages/login.dart';
import 'package:bank_test/pages/forgotpassword.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
  
}

class _LoginOrRegisterState extends State<LoginOrRegister>{

  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  
    @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else{
      return ForgotPassword(onTap: togglePages);
    }
  }
}