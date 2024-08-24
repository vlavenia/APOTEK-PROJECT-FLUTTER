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
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 19.0,
                          ),
                          CategoryCard(
                            nameImage: "images/item7.png",
                            title: "Sugar\nSubstitute",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          CategoryCard(
                            nameImage: "images/item8.png",
                            title: "Juices &\nVinegars",
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          CategoryCard(
                            nameImage: "images/item9.png",
                            title: "Vitamins\nMedicines",
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          CategoryCard(
                            nameImage: "images/item8.png",
                            title: "Vitamins\nMedicines",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 24, top: 15, bottom: 25),
                child: Text(
                  "All Product",
                  style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 19),
                ),
              ),
              Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsView()),
                        );
                      },
                      child: ItemCard(
                        nameImage: "images/item1.png",
                        title: "Accu-check Active\nTest Strip",
                        price: "Rp 112.000",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CategoryView> createState() => CategoryController();
}
