import 'package:bank_test/pages/detail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:myapp/utils.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
  
}

class _NotificationPageState extends State<NotificationPage>{
  void signOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360.0124511719;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(title: const Text(
                      '  Notifications',
                      style: TextStyle (
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        height: 2.0,
                        color: Color(0xffffffff),
                      ),
                    ),
      
                 actions:[
                      /* SizedBox(
                        width: 40*fem,
                        height: 62*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: const EdgeInsets.all(0.8),
                          ),
                          child: Image.asset(
                            'assets/page-1/images/-diQ.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ), */
                       IconButton(
                          onPressed: signOut, 
                         icon: const Icon(Icons.logout),
                      ), 
                     ],
                    ),
      body: SingleChildScrollView(
      //width: double.infinity,
      child: Container(
              // autogroupwnprdrY (DT2rN7Bwbi8vsEPeD6WNPr)
              padding: EdgeInsets.fromLTRB(11*fem, 12*fem, 12*fem, 311*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdnuqmC4 (DT2qPYyqv8QQzuYcNeDNUQ)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    padding: EdgeInsets.fromLTRB(11*fem, 19*fem, 11*fem, 9.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // unauthorizedweardetectedU6U (101:57)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 17.5*fem),
                          child: Text(
                            'Unauthorized wear detected',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color:const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupavovNSk (DT2qWTwzUDU5FB1BzoaVov)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxx6Nk (101:58)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 2023-09-13\nTime: 9.15 PM',
                                  style: TextStyle (
                                    
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color:const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupa4meb4c (DT2qa8WYxQY7MLbYckA4ME)
                                margin: EdgeInsets.fromLTRB(0*fem, 2.5*fem, 0*fem, 2.5*fem),
                                width: 89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color:const Color(0xff9ddc4d),
                                  borderRadius: BorderRadius.circular(15*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle (
                                        
                                        fontSize: 15*fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*fem/fem,
                                        color:const Color(0xff000000),
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
                    // autogroupnncprFS (DT2qi8HECTbeJyLsEynNcp)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                    padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // currencynoteswarningDVJ (101:67)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                          child: Text(
                            'Currency Notes Warning',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color:const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup7uckXVz (DT2qpHmdCR8ADXJ1ZF7uck)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxxT8k (101:68)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 2023-10-03\nTime: 11.40 AM',
                                  style: TextStyle (
                                    
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color:const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupfsjgYR6 (DT2qt3ANy4osv6qC6jFsJg)
                                margin: EdgeInsets.fromLTRB(0*fem, 2.5*fem, 0*fem, 2.5*fem),
                                width: 89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color:const Color(0xff9ddc4d),
                                  borderRadius: BorderRadius.circular(15*fem),
                                ),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                                     },
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle (
                                       
                                        fontSize: 15*fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*fem/fem,
                                        color:const Color(0xff000000),
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
                    // autogroupub4uDn8 (DT2r2sF13i2Eos2mxQUB4U)
                    padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color:const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // unauthorizedweardetectedwTE (101:62)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 17.5*fem),
                          child: Text(
                            'Unauthorized wear detected',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color:const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupn7ipraC (DT2r8HFeVY1cNhUUxmn7ip)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxxzAc (101:63)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 2023-10-29\nTime: 8.35 PM',
                                  style: TextStyle (
                                   
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color:const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupbgrc6De (DT2rCH8z7ZYNrWr9GtbGrc)
                                margin: EdgeInsets.fromLTRB(0*fem, 2.5*fem, 0*fem, 2.5*fem),
                                width: 89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xff9ddc4d),
                                  borderRadius: BorderRadius.circular(15*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'Details',
                                      textAlign: TextAlign.center,
                                      style: TextStyle (
                                        
                                        fontSize: 15*fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*fem/fem,
                                        color:const Color(0xff000000),
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
                ],
              ),
            ),
          ),
    );
  }
}