import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/success_controller.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  Widget build(context, SuccessController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<SuccessView> createState() => SuccessController();
}
