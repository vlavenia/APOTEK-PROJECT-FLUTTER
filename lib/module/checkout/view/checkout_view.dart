// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/checkout/widget/Radiowidget.dart';
import 'package:medhub/module/checkout/widget/item_checkout.dart';
import 'package:medhub/module/checkout/widget/listppayment_widget.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
            const SizedBox(
              height: 15.0,
            ),
            Container(
                width: 321,
                height: 93,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: greyColor.withOpacity(0.1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "(031) 555-024",
                          style: greyTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Jl. Rajawali No. 02, Surabaya",
                          style: greyTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.edit, size: 16, color: greyColor),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Icon(
                  Icons.add,
                  size: 12,
                  color: greenColor,
                ),
                Text(
                  "Add Text",
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
            ),
            Text(
              "Payment Method",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border: Border.all(
                  width: 1.0,
                  color: greyColor.withOpacity(0.1),
                ),
              ),
              child: ListppaymentWidget(),
            ),
            SizedBox(
              height: 21.0,
            ),
            Container(
              width: 327,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessView()),
                  );
                },
                child: Center(
                  child: Text("Place Order @ Rp 185.000",
                      style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
