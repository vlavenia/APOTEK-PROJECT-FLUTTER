import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class ListppaymentWidget extends StatelessWidget {
  const ListppaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border:
                    Border.all(width: 1.0, color: greyColor.withOpacity(0.1)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/ovoimage.png",
                  width: 29,
                  height: 41,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 21.0,
            ),
            Expanded(
              child: Text("OVO"),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border:
                    Border.all(width: 1.0, color: greyColor.withOpacity(0.1)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/danaimage.png",
                  width: 29,
                  height: 29,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 21.0,
            ),
            Expanded(
              child: Text("Dana"),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border:
                    Border.all(width: 1.0, color: greyColor.withOpacity(0.1)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/shopeepayimage.png",
                  width: 38,
                  height: 31,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 21.0,
            ),
            Expanded(
              child: Text("ShopeePay"),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border:
                    Border.all(width: 1.0, color: greyColor.withOpacity(0.1)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/GoPayimage.png",
                  width: 30,
                  height: 45,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 21.0,
            ),
            Expanded(
              child: Text("GoPay"),
            ),
          ],
        ),
      ],
    );
  }
}
