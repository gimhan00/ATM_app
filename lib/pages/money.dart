import 'package:bank_test/pages/helmet.dart';
import 'package:bank_test/pages/notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class MoneyPage extends StatefulWidget{
  const MoneyPage({super.key});

  @override
  State<MoneyPage> createState() => _MoneyPageState();
  
}

class _MoneyPageState extends State<MoneyPage>{
  void signOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(title: const Text(
                      '  ATM seis',
                      style: TextStyle (
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        height: 2.0,
                        color: Color(0xffffffff),
                      ),
                    ),
      
                 actions: [
                    GestureDetector(
                     onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                     },
                    child: Image.asset(
                        'assets/page-1/images/-diQ.png',
                        height: 5.0,
                        width: 35.0,
                        fit: BoxFit.cover,
                        ),
                    ),
                    IconButton(
                      onPressed: signOut,
                      icon: const Icon(Icons.logout),
                    ),
                  ],
      ),
                                
      body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration:const BoxDecoration (
          color: Color(0xff234d8e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
              width: double.infinity,
              height: 1*fem,
              decoration:const BoxDecoration (
                color: Color.fromARGB(255, 89, 123, 247),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 11*fem),
                child: Text(
                  'Money Status',
                  textAlign: TextAlign.center,
                  style: TextStyle (
                    fontSize: 20*fem,
                    fontWeight: FontWeight.w400,
                    height: 1.5*fem/fem,
                    color:const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 50*fem),
              width: double.infinity,
              height: 66*fem,
              decoration:const BoxDecoration (
                color: Color(0xff89cdf2),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65*fem, 0*fem),
                    width: 180*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 92*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 90*fem,
                              height: 66*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(25*fem),
                                  color:const Color(0xff89ccf2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2*fem,
                          top: 2*fem,
                          child: Align(
                            child: SizedBox(
                              width: 170*fem,
                              height: 62*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(28*fem),
                                  color:const Color(0xff3e50f1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 49*fem,
                          top: 8*fem,
                          child: Align(
                            child: SizedBox(
                              width: 69*fem,
                              height: 50*fem,
                              child: Image.asset(
                                'assets/page-1/images/money-cash-icon-png-1-X3E.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 115*fem,
                    //height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle89pU (7:38)
                          left: 25*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 90*fem,
                              height: 66*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color:const Color(0xff89cdf2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10*fem,
                          top: 0*fem,
                        child:GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HelmetPage()));
                            },
                          child: Align(
                            child: SizedBox(
                              width: 60*fem,
                              height: 60*fem,
                              /* child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ), */
                                child: Image.asset(
                                  'assets/page-1/images/helmet-1-ykc.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 175*fem, 0*fem),
              child: Text(
                '5000 Notes',
                style: TextStyle (
                 
                  fontSize: 20*fem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*fem/fem,
                  color:const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(38*fem, 15*fem, 39*fem, 74*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 61*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 47*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15*fem),
                            color:const Color(0xffe02b2b),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 12*fem),
                    child: Text(
                      '1000 Notes',
                      style: TextStyle (
                      
                        fontSize: 20*fem,
                        fontWeight: FontWeight.w400,
                        height: 0.2125*fem/fem,
                        color:const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 61*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 153*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15*fem),
                            color:const Color(0xff87db1e),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // notessR2 (7:88)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: Text(
                      '500 Notes',
                      style: TextStyle (
                        
                        fontSize: 20*fem,
                        fontWeight: FontWeight.w400,
                        height: 0.2125*fem/fem,
                        color:const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 61*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 253*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15*fem),
                            color:const Color(0xff87db1e),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: Text(
                      '100 Notes',
                      style: TextStyle (
                       
                        fontSize: 20*fem,
                        fontWeight: FontWeight.w400,
                        height: 0.2125*fem/fem,
                        color:const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 92*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15*fem),
                            color:const Color(0xffde6927),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}