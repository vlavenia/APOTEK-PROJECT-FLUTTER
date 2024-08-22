// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/category_controller.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  Widget build(context, CategoryController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        title: Text(
          "Diabates Care",
          style: primaryTextStyle.copyWith(
              fontWeight: FontWeight.bold, fontSize: 19),
        ),
        backgroundColor: Color(0xffF5F7FA),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,

          child: Column(
            children: [
              Image.asset(
                "assets/images/bannerImage1.png",
                width: 360,
                height: 185,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Diabetic Diet",
                        style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                        ),
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
                          const SizedBox(
                            width: 19.0,
                          ),
                          ItemCard(),
                          SizedBox(
                            width: 16,
                          ),
                          ItemCard(),
                          const SizedBox(
                            width: 16,
                          ),
                          ItemCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 15),
                      child: Text("All Product",
                          style: primaryTextStyle.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 19)),
                    ),
                    GridView.builder(
                      padding: EdgeInsets.all(15),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: (176 / 246),
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 5,
                      ),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsView()),
                            );
                          },
                          child: ItemCard(),
                        );
                      },
                    ),
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
  State<CategoryView> createState() => CategoryController();
}
