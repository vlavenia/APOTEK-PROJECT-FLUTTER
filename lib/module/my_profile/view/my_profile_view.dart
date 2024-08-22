import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/my_profile_controller.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({super.key});

  Widget build(context, MyProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
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
  State<MyProfileView> createState() => MyProfileController();
}
