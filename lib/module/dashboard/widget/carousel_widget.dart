// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';
import 'package:medhub/module/dashboard/controller/dashboard_controller.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = DashboardController();
    return Builder(
      builder: (context) {
        List images = [
          "assets/images/bannerImage1.png",
          "https://plus.unsplash.com/premium_photo-1661775434014-9c0e8d71de03?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1564069114553-7215e1ff1890?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1677529494239-682591edd525?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ];

        return Column(
          children: [
            CarouselSlider(
              carouselController: controller.CarouselSliderControllers,
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
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((entry) {
                bool isSelected = controller.currentIndex == entry.key;
                return GestureDetector(
                  onTap: () =>
                      controller.CarouselSliderControllers.animateToPage(
                          entry.key),
                  child: Container(
                    width: isSelected ? 40 : 6.0,
                    height: 6.0,
                    margin: const EdgeInsets.only(
                      right: 6.0,
                      top: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? primaryColor
                          : primaryColor.withOpacity(0.6),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
