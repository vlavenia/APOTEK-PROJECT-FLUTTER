import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/core/theme/theme.dart';

class ItemMenu extends StatelessWidget {
  ItemMenu({
    super.key,
    required this.nameImage,
    required this.title,
    required this.color1,
    required this.color2,
  });
  final nameImage;
  String title;
  Color color1;
  Color color2;

  @override
  Widget build(BuildContext context) {
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color1,
                    color2,
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ImageIcon(
                  AssetImage(
                    'assets/' + nameImage,
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
              title,
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
