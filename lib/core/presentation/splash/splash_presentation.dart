import 'package:flutter/material.dart';
import 'package:medhub/core/presentation/onBoarding/onBoarding1_presentation.dart';
import 'package:medhub/module/login/view/login_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

class SplashPresentation extends StatefulWidget {
  const SplashPresentation({super.key, required Done done});

  @override
  State<SplashPresentation> createState() => _SplashPresentationState();
}

class _SplashPresentationState extends State<SplashPresentation> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding1Presentation()),
      );
    });
  }

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
