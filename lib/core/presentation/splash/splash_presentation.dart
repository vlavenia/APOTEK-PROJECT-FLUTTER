import 'package:flutter/material.dart';

class SplashPresentation extends StatelessWidget {
  const SplashPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: 140,
        left: 0,
        right: 0,
        child: SizedBox(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "assets/images/bgSplash.png",
            width: 1335.28,
            height: 785.23,
            // fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 74,
              height: 74,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 26.0,
            ),
            Image.asset(
              "assets/images/logoTitle.png",
              width: 102,
              height: 34,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    ]));
  }
}
