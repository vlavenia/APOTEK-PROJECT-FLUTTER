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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2 items in your cart", style: sofiaTextStyle),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 24.0,
                          color: greenColor,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text("Add More",
                            style: sofiaTextStyle.copyWith(
                                color: greenColor, fontSize: 14))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                children: [
                  ItemCheckout(),
                  ItemCheckout(),
                ],
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                width: 327,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffE0E0E0).withOpacity(0.6),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icon/label_icon.png",
                            width: 16,
                            height: 16,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            "1 Coupon Applied",
                            style: primaryTextStyle.copyWith(
                              color: greenColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.close_outlined,
                      size: 20,
                      color: Color(0xff000000).withOpacity(0.25),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment Summary",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Total",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            )),
                        Text("Rp 228.000",
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Items Discount",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            )),
                        Text("- Rp 28.800",
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    Row(
                      children: [],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Coupun Discount",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            )),
                        Text("- Rp 15.800",
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            )),
                        Text("Free",
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                            )),
                        Text("Rp 185.500",
                            style: primaryTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35.0,
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
                child: Center(
                  child: Text("Place Order @ Rp 185.000",
                      style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
