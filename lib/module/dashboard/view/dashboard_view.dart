// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/dashboard/widget/featured_menu.dart';
import 'package:medhub/module/dashboard/widget/item_menu.dart';
import 'package:medhub/widget/item_card.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
        backgroundColor: Color(0xffF7FBFF),
        // extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 290,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff1B75BC),
                            Color(0xff00AAF5),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 42,
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset(
                                    "assets/images/ProfileUser_image.png",
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icon/notification2_icon.png",
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Image.asset(
                                      "assets/icon/shop2_icon.png",
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi Lorem ",
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Welcome to MedHub",
                                  style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 189,
                      left: 34,
                      child: Container(
                        margin: EdgeInsets.only(top: 18),
                        width: 340,
                        height: 55,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(56),
                          ),
                          color: Colors.white,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(56),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Medicine & Healthcare products',
                              hintStyle: greyTextStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(56),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 212,
                      top: 61,
                      child: Container(
                        width: 412,
                        height: 412,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.07),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: EdgeInsets.only(left: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Categories",
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.all(9),
                              children: [
                                ItemMenu(),
                                ItemMenu(),
                                ItemMenu(),
                                ItemMenu(),
                                ItemMenu(),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18.0),
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/bannerImage1.png",
                          width: 356,
                          height: 140,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deals Of the Day",
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Container(
                              height: 269,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ItemCard(),
                                  const SizedBox(
                                    width: 17.0,
                                  ),
                                  ItemCard(),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Featured Menu",
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  Container(
                                    height: 269,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        FeaturedMenu(),
                                        const SizedBox(
                                          height: 16.0,
                                        ),
                                        FeaturedMenu(),
                                        const SizedBox(
                                          height: 16.0,
                                        ),
                                        FeaturedMenu(),
                                        const SizedBox(
                                          height: 16.0,
                                        ),
                                        FeaturedMenu(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
