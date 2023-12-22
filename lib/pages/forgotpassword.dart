//import 'package:bank_test/components/button.dart';
//import 'package:bank_test/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bank_test/components/text_field.dart';

class ForgotPassword extends StatefulWidget{
  final Function()? onTap;
  const ForgotPassword({super.key,required this.onTap});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
  
}

class _ForgotPasswordState extends State<ForgotPassword>{
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController  = TextEditingController();

  void signUp() async{
    showDialog(
      context: context, 
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
      );

      if(passwordTextController.text != confirmPasswordTextController.text){
        Navigator.pop(context);

        displayMessage("Password not Match!");
        return;
      }
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTextController.text, 
          password: passwordTextController.text
          );
          if(context.mounted) Navigator.pop(context);
      }
      on FirebaseAuthException catch(e){
        
        Navigator.pop(context);

        displayMessage(e.code);
      }
  }

  void displayMessage(String message){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        //width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(33*fem, 50*fem, 33*fem, 21.5*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xff234d8e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(93*fem, 0*fem, 93*fem, 18*fem),
              width: double.infinity,
              height: 40*fem,
              decoration: BoxDecoration (
                color:const Color(0xff9ddc4d),
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Get OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle (
                      fontSize: 16*fem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*fem/fem,
                      color:const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 42*fem),
              padding: EdgeInsets.fromLTRB(1*fem, 11.5*fem, 1*fem, 10.5*fem),
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
              child:Center(
              child: Text(
                'One Time Password',
                style: TextStyle (
                  fontSize: 16*fem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*fem/fem,
                  color:const Color(0xff5e5252),
                ),
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              padding: EdgeInsets.fromLTRB(4*fem, 11.5*fem, 4*fem, 9.5*fem),
              width: double.infinity,
              decoration:const BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
              child: Center(
                child: Text(
                  'Provided Phone number',
                  textAlign: TextAlign.center,
                  style: TextStyle (
                    fontSize: 16*fem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*fem/fem,
                    color:const Color(0xff5e5252),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(89*fem, 0*fem, 97*fem, 15*fem),
              width: double.infinity,
              height: 40*fem,
              decoration: BoxDecoration (
                color:const Color(0xff9ddc4d),
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Get OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle (
                      fontSize: 16*fem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*fem/fem,
                      color:const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
              padding: EdgeInsets.fromLTRB(4*fem, 13.5*fem, 4*fem, 8.5*fem),
              width: double.infinity,
              decoration:const BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
              child: Center(
              child: Text(
                'One Time Password',
                style: TextStyle (
                  fontSize: 16*fem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*fem/fem,
                  color: const Color(0xff5e5252),
                ),
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 179*fem, 9*fem),
              child: Text(
                'New Password',
                textAlign: TextAlign.center,
                style: TextStyle (
                  fontSize: 16*fem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*fem/fem,
                  color:const Color(0xffffffff),
                ),
              ),
            ),
            MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                 const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 148*fem, 9*fem),
              child: Text(
                'Conform Password',
                textAlign: TextAlign.center,
                style: TextStyle (
                  fontSize: 16*fem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*fem/fem,
                  color:const Color(0xffffffff),
                ),
              ),
            ),
             MyTextField(
                    controller: confirmPasswordTextController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 45*fem, 11.5*fem),
              width: double.infinity,
              height: 39*fem,
              decoration: BoxDecoration (
                color: const Color(0xff9ddc4d),
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Change Password',
                    textAlign: TextAlign.center,
                    style: TextStyle (
                      fontSize: 20*fem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*fem/fem,
                      color:const  Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                child: GestureDetector(
                        onTap: widget.onTap,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle (
                      fontSize: 20*fem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*fem/fem,
                      color:const  Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
      
          );
  }
}