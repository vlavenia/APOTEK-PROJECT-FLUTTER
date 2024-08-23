import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/core/theme/theme.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/icon/dental_icon.png"
          "assets/icon/dental_icon.png"
          "assets/icon/dental_icon.png"
          "assets/icon/dental_icon.png"
          "assets/icon/dental_icon.png"
    ];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryView()),
        );
      },
      splashColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(right: 26),
        child: Column(
          children: [
            Container(
              height: 52,
              width: 52,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFF9598),
                    Color(0xffFF70A7),
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: ImageIcon(
                  AssetImage(
                    "assets/icon/dental_icon.png",
                  ),
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Dental",
              style: primaryTextStyle.copyWith(
                fontSize: 11,
                color: primaryColor.withOpacity(0.95),
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
