// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/product_details/widget/packagesize_widget.dart';
import 'package:medhub/module/product_details/widget/ratingbar_widget.dart';
import '../controller/product_details_controller.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  Widget build(context, ProductDetailsController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F7FA),
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Product Details"),
              Container(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icon/notification_icon.png",
                      width: 18,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      "assets/icon/shop2_icon.png",
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sugar Free Gold Low Calories",
                    style: primaryTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Etiam mollis metus non purus ",
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  color: Color.fromARGB(228, 248, 248, 248),
                  width: 327,
                  height: 140,
                  child: Center(
                    child: Image.asset(
                      "assets/images/item4.png",
                      width: 141.37,
                      height: 143.25,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp 56.000",
                            style: primaryTextStyle.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Etiam mollis",
                          style: greyTextStyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          size: 24.0,
                          color: Color(0xff00A59B),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text("Add to Card")
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black.withOpacity(0.1)),
              const SizedBox(
                height: 9.0,
              ),
              Text(
                "Package Size",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  PackageSizeWidget(),
                  const SizedBox(
                    width: 16.0,
                  ),
                  PackageSizeWidget(),
                  const SizedBox(
                    width: 16.0,
                  ),
                  PackageSizeWidget(),
                  const SizedBox(
                    width: 16.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 24),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Details",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rating & Reviews",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "4.4",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 33,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Icon(Icons.star,
                                    size: 26, color: Color(0xffFFC000)),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "923 Ratings\nand 257 Reviews",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 32.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RatingBarWidget(),
                            RatingBarWidget(),
                            RatingBarWidget(),
                            RatingBarWidget(),
                            RatingBarWidget(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Lorem Hoffman"),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Color(0xffFFC000),
                                    ),
                                    Text("4.2"),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "05 Agustus 2024",
                              style: greyTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
                          style: greyTextStyle,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailsView> createState() => ProductDetailsController();
}
