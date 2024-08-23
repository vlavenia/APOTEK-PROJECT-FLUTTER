import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "4",
          style: greyTextStyle,
        ),
        const Icon(
          Icons.star,
          size: 16,
          color: Color(0xffFFD040),
        ),
        Container(
          width: 123,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: 103,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Color(0xff00A59B),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text("67%", style: greyTextStyle.copyWith(fontSize: 14))
      ],
    );
  }
}
