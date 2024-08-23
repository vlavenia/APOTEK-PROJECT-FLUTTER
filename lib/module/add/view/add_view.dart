import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/add_controller.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  Widget build(context, AddController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add"),
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
  State<AddView> createState() => AddController();
}
