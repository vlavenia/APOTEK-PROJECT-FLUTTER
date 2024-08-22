import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../view/product_details_view.dart';

class ProductDetailsController extends State<ProductDetailsView> {
  static late ProductDetailsController instance;
  late ProductDetailsView view;

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
