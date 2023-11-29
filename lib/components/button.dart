import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // autogrouphjmwHmA (DT2iMkhLZSJC5bTEWfHJmW)
        margin: const EdgeInsets.fromLTRB(95, 0, 94, 29),
        width: double.infinity,
        height: 39,
        decoration: BoxDecoration(
          color: const Color(0xff9ddc4d),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Center(
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                height: 1.2125,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
