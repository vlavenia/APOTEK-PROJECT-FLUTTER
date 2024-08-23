import 'package:google_fonts/google_fonts.dart';
import 'package:medhub/state_util.dart';
import 'package:medhub/core.dart';
import 'package:flutter/material.dart';
import 'package:medhub/core/presentation/home/HomePresentation.dart';
import 'package:medhub/core/presentation/splash/splash_presentation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme:ThemeData(
        scaffoldBackgroundColor: const Color(0xffF5F7FA),
       textTheme: GoogleFonts.robotoTextTheme(
           Theme.of(context).textTheme,
       ),
      ),
      home: const WellcomePresentation()
    );
  }
}
