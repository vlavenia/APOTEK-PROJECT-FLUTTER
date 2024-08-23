// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/checkout/widget/item_checkout.dart';
import '../controller/checkout_controller.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  Widget build(context, CheckoutController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        actions: const [],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("2 items in your cart",
                        style: greyTextStyle.copyWith(fontSize: 14)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("TOTAL", style: greyTextStyle.copyWith(fontSize: 13)),
                    Text(
                      "RP. 185.000",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 11.0,
            ),
            Text(
              "Delivery Address",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
                width: 321,
                height: 93,
                child: Row(
                  children: [],
                )),
            Row(children: []),
            Text("Payment Method"),
            Column(
              children: [],
            ),
            SizedBox(
              height: 21.0,
            ),
          ],
        ),
      )),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
