// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WellcomePresentation extends StatelessWidget {
  const WellcomePresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/wellcomeImage.png",
            width: 258,
            height: 258,
          ),
          const SizedBox(
            height: 34.0,
          ),
          const Text(
            "Welcome To MedHub",
            style: TextStyle(
              color: Color(0XFF090F47),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            textAlign: TextAlign.center,
            "Do you want some help with your\nhealth to get better life?",
            style: TextStyle(
              color: Color.fromRGBO(9, 15, 71, 0.45),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 34.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff0F3759),
              borderRadius: BorderRadius.all(
                Radius.circular(56),
              ),
            ),
            width: 311,
            height: 50,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "SIGN UP WITH EMAIL",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(9, 15, 71, 0.45),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(56),
              ),
            ),
            width: 311,
            height: 50,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "CONTINUE WITH FACEBOOK",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
