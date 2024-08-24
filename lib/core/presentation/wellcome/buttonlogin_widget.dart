// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonLoginWidgget extends StatelessWidget {
  ButtonLoginWidgget({
    super.key,
    this.image,
    required this.title,
  });
  final image;
  String title;

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
              "assets/"+image,
              width: 28,
              height: 28,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 21.0,
            ),
            Text(
              textAlign: TextAlign.center,
              "CONTINUE WITH "+title,
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
