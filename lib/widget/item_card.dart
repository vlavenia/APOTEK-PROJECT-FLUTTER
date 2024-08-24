import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    super.key,
    required this.nameImage,
    required this.title,
    required this.price,
  });
  final nameImage;
  String title;
  String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Container(
                width: 178,
                height: 154,
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
                    height: 134,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 164,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 48,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff00A59B),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      )),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 13,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "4,2",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
