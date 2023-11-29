import 'package:bank_test/pages/money.dart';
import 'package:bank_test/pages/notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:myapp/utils.dart';

class HelmetPage extends StatefulWidget {
  const HelmetPage({super.key});

  @override
  State<HelmetPage> createState() => _HelmetPageState();

}

  class _HelmetPageState extends State<HelmetPage>{
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
      //width: double.infinity,
      child: Container(
        // helmet5gk (7:66)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xff234d8e),
        ),
            child: Column(
              children:[
            Center(
              // moneystatusK2p (13:12)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 11*fem),
                child: Text(
                  'Unauthorized Wear',
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
              // autogroup8ysxxGg (DT2nnnyiHYrq5eb5Ro8ySx)
              padding: EdgeInsets.fromLTRB(55*fem, 0*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: 66*fem,
              decoration:const BoxDecoration (
                color: Color(0xff89cdf2),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // moneycashiconpng1TDS (101:2)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 0*fem),
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MoneyPage()));
                     },
        
                      child: SizedBox(
                        width: 69*fem,
                        height: 50*fem,
                        child: Image.asset(
                          'assets/page-1/images/money-cash-icon-png-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupcu5iw8c (DT2nuscFQZ9rWjwJu3cu5i)
                    padding: EdgeInsets.fromLTRB(50*fem, 4*fem, 50*fem, 8*fem),
                    //height: double.infinity,
                    width: 170*fem,
                    height: 62*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xff3e50f1),
                      borderRadius: BorderRadius.circular(28*fem),
                    ),
                    child: Align(
                      // helmet1rWU (7:76)
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 80*fem,
                        height: 80*fem,
                        child: Image.asset(
                          'assets/page-1/images/helmet-1.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup2zojPWQ (DT2p3qiL9zQWRibi3z2zoJ)
              padding: EdgeInsets.fromLTRB(11*fem, 31*fem, 12*fem, 247*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup3e3jiYg (DT2o1THHRJNbGQGfkW3e3J)
                    padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // unauthorizedweardetecteddQk (7:99)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 17.5*fem),
                          child: Text(
                            'Unauthorized wear detected',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupnkc8eak (DT2o9ciMEGfVQrueDpnkc8)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxxyN8 (7:100)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 20xx-xx-xx\nTime: 20xx-xx-xx',
                                  style: TextStyle (
                                  
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupii3a4eU (DT2oDnG5RDRd5WAxP2ii3A)
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
                                        color: const Color(0xff000000),
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
                  SizedBox(
                    height: 13*fem,
                  ),
                  Container(
                    // autogroupw1nxJHv (DT2oNcLhVrdyyGNYEhw1nx)
                    padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // unauthorizedweardetectedcpQ (7:110)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 17.5*fem),
                          child: Text(
                            'Unauthorized wear detected',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupjjyrju2 (DT2oVSUemV5xd7tHwKjjyr)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxxgJU (7:111)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 20xx-xx-xx\nTime: 20xx-xx-xx',
                                  style: TextStyle (
                                    
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupshfnAzL (DT2oZBsQY8mgKhRUUoshfn)
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
                                        color: const Color(0xff000000),
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
                  SizedBox(
                    height: 13*fem,
                  ),
                  Container(
                    // autogroupeqac2me (DT2oi6nDuEbiosZtG2eQaC)
                    padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffc8f7cd),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // unauthorizedweardetectedXyJ (7:115)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 17.5*fem),
                          child: Text(
                            'Unauthorized wear detected',
                            style: TextStyle (
                              
                              fontSize: 20*fem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*fem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupbwq2T6G (DT2oor7eUu3pkMntxaBwq2)
                          margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          height: 39*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // date20xxxxxxtime20xxxxxxz6C (7:116)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 131*fem,
                                ),
                                child: Text(
                                  'Date: 20xx-xx-xx\nTime: 20xx-xx-xx',
                                  style: TextStyle (
                                    
                                    fontSize: 16*fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*fem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogrouptjfa5NY (DT2osgLbY1ME3MGuRbtJfa)
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
                                        color: const Color(0xff000000),
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
              ],
      ),
        ),
      ),
    );
      
    
  }
}