// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/dashboard/widget/carousel_widget.dart';
import 'package:medhub/module/dashboard/widget/featured_menu.dart';
import 'package:medhub/module/dashboard/widget/item_menu.dart';
import 'package:medhub/module/dashboard/widget/listcategories_widget.dart';
import 'package:medhub/widget/item_card.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 0,
            elevation: 0.0,
            automaticallyImplyLeading: false),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 285,
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
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
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
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(56),
                          ),
                          color: Colors.white,
                        ),
                        child: Container(
                          height: 60,
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
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
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
              Container(
                color: Color(0xffF5F7FA),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.only(bottom: 15, left: 27, top: 10),
                      child: Text("Top Categories",
                          style: primaryTextStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          ItemMenu(
                            nameImage: "icon/dental_icon.png",
                            title: "Dental",
                            color1: Color(0xffFF9598),
                            color2: Color(0xffFF70A7),
                          ),
                          ItemMenu(
                            nameImage: "icon/wellness_icon.png",
                            title: "Wellnes",
                            color1: Color(0xff15BD92),
                            color2: Color(0xff15BD92),
                          ),
                          ItemMenu(
                            nameImage: "icon/homeo_icon.png",
                            title: "Homeo",
                            color1: Color(0xffFFC06F),
                            color2: Color(0xffFF793A),
                          ),
                          ItemMenu(
                            nameImage: "icon/eyecare_icon.png",
                            title: "Eye Care",
                            color1: Color(0xff4DB7FF),
                            color2: Color(0xff3E7DFF),
                          ),
                          ItemMenu(
                            nameImage: "icon/skinhair_icon.png",
                            title: "Skin & Hair",
                            color1: Color(0xff828282),
                            color2: Color(0xff090F47),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Builder(builder: (context) {
                      List images = [
                        "assets/images/bannerImage1.png",
                        "assets/images/bannerImage1.png",
                        "assets/images/bannerImage1.png",
                      ];

                      return Stack(
                        children: [
                          CarouselSlider(
                            carouselController:
                                controller.CarouselSliderControllers,
                            options: CarouselOptions(
                              height: 160.0,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                controller.setState(() {});
                              },
                            ),
                            items: images.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6.0),
                                      ),
                                    ),
                                    child: Image.asset(
                                      imageUrl,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Positioned(
                            top: 125,
                            left: 190,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: images.asMap().entries.map((entry) {
                                bool isSelected =
                                    controller.currentIndex == entry.key;
                                return GestureDetector(
                                  onTap: () =>
                                      controller.CarouselSliderControllers
                                          .animateToPage(entry.key),
                                  child: Container(
                                    width: isSelected ? 5.0 : 5.0,
                                    height: 5.0,
                                    margin: const EdgeInsets.only(
                                      right: 6.0,
                                      top: 12.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? greenColor
                                          : primaryColor.withOpacity(0.6),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 27, top: 24, bottom: 6, right: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Deals Of the Day",
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "More",
                            style: primaryTextStyle.copyWith(
                                color: Color(0xff00A59B), fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      height: 269,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 27.0,
                          ),
                          ItemCard(
                            nameImage: "images/item1.png",
                            title: "Accu-check Active\nTest Strip",
                            price: "Rp 112.000",
                          ),
                          const SizedBox(
                            width: 17.0,
                          ),
                          ItemCard(
                            nameImage: "images/item2.png",
                            title: "Omron HEM-8712\nBP Monitor",
                            price: "Rp 150.000",
                          ),
                          const SizedBox(
                            width: 27.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 27),
                      child: Text(
                        "Featured Menu",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          FeaturedMenu(
                            nameImage: "images/brand1.png",
                            title: "Himlaya\nWelnes",
                          ),
                          FeaturedMenu(
                            nameImage: "images/brand2.png",
                            title: "Accu\nCheck",
                          ),
                          FeaturedMenu(
                            nameImage: "images/brand3.png",
                            title: "Vlcc",
                          ),
                          FeaturedMenu(
                            nameImage: "images/brand4.png",
                            title: "Protinex",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
