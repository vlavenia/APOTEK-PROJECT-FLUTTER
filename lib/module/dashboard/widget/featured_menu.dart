import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class FeaturedMenu extends StatelessWidget {
  FeaturedMenu({
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
              width: 80,
              height: 80,
              child: Center(
                child: Image.asset(
                  "assets/" + nameImage,
                  width: 50,
                  height: 50,
                  fit: BoxFit.fitWidth,
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
                      title,
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
