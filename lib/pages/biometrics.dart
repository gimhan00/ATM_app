import 'package:flutter/material.dart';
//import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(63 * fem, 59 * fem, 64 * fem, 90 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff224d8d),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 80 * fem),
                constraints: BoxConstraints(
                  maxWidth: 184 * fem,
                ),
                child: Text(
                  'Authentication Need',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24 * fem,
                    fontWeight: FontWeight.w900,
                    height: 1.2125 * fem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                constraints: BoxConstraints(
                  maxWidth: 233 * fem,
                ),
                child: Text(
                  'Please put your thumb to the sensor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24 * fem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * fem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(17 * fem, 0 * fem, 16 * fem, 36 * fem),
                padding:
                    EdgeInsets.fromLTRB(12 * fem, 12 * fem, 12 * fem, 12 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffacc2fc),
                  borderRadius: BorderRadius.circular(100 * fem),
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 150 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(88 * fem),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/ellipse-1-bg.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 80 * fem),
                child: Text(
                  'Verified',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24 * fem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * fem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(50 * fem, 0 * fem, 50 * fem, 0 * fem),
                width: double.infinity,
                height: 30 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xff9ddc4d),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Center(
                  child: Center(
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24 * fem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * fem / fem,
                        color: const Color(0xff000000),
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
