import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../view/add_view.dart';

class AddController extends State<AddView> {
  static late AddController instance;
  late AddView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
