import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../view/cart_view.dart';

class CartController extends State<CartView> {
  static late CartController instance;
  late CartView view;

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
