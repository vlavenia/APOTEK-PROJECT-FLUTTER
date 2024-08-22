import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class FeaturedMenu extends StatelessWidget {
  const FeaturedMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              width: 100,
              height: 100,
              child: Center(
                child: Image.asset(
                  "assets/images/brand1.png",
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              // padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Himalaya\nWelnes",
                      style: primaryTextStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
