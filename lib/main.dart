import 'package:flutter/material.dart';
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
      theme: ThemeData(
          ),
      home: const SplashPresentation(),
    );
  }
}
