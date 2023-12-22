import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bank_test/components/text_field.dart';
import 'package:bank_test/components/button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void signIn() async {

    showDialog(
      context: context,
      builder: (context)=>const Center(
        child: CircularProgressIndicator(),
      ),
      );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextController.text,
        password: passwordTextController.text,
      );
      if (
        context.mounted) Navigator.pop(context);
    } 
    on FirebaseAuthException catch (e) {

      
      Navigator.pop(context);

      displayMessage(e.code);
    }
    setState(() {
      emailTextController.clear();
      passwordTextController.clear();
    });
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
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffcfc8c8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/desktop-wallpaper-techno-buzz-professional-1-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 48 * fem, 19 * fem, 33 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 101 * fem, 30 * fem),
                    child: Text(
                      'ATM seis',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48 * fem,
                        fontWeight: FontWeight.w900,
                        height: 1.2125 * fem,
                        color: const Color(0xffffb9b9),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      'User Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20 * fem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * fem / fem,
                        color: const Color(0xfffffdfd),
                      ),
                    ),
                  ),
                  MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                   const SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20 * fem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * fem / fem,
                        color: const Color(0xfff8f2f2),
                      ),
                    ),
                  ),
                  MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                   const SizedBox(height: 20),
                  MyButton(
                    onTap: signIn,
                    text: 'Login',
                  ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: const Text(
                          "Forgot Password? ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Click",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 623 * fem,
              height: 360 * fem,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(220 * fem),
                  topRight: Radius.circular(4 * fem),
                  bottomRight: Radius.circular(4 * fem),
                  bottomLeft: Radius.circular(4 * fem),
                ),
                child: Image.asset(
                  'assets/page-1/images/pngtree-ai-camera-scanning-faces-of-people-taking-money-from-atm-image1111276-1-BAx.png',
                  fit: BoxFit.cover,
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
