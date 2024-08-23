import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../view/notification_view.dart';

class NotificationController extends State<NotificationView> {
  static late NotificationController instance;
  late NotificationView view;

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
