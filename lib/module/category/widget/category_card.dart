import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.nameImage,
    required this.title,
  });
  final nameImage;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9)),
                  color: Color(0xffEEEEF0),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/" + nameImage,
                    width: 109,
                    height: 99,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  title,
                  style: primaryTextStyle.copyWith(
                      fontSize: 13, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
