// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonLoginWidgget extends StatelessWidget {
  const ButtonLoginWidgget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/facebook_icon.png",
              width: 28,
              height: 28,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 21.0,
            ),
            Text(
              textAlign: TextAlign.center,
              "CONTINUE WITH FACEBOOK",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
