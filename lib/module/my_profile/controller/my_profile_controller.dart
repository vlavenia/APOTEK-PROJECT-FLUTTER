import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../view/my_profile_view.dart';

class MyProfileController extends State<MyProfileView> {
  static late MyProfileController instance;
  late MyProfileView view;

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
