import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';

class PackageSizeWidget extends StatelessWidget {
  const PackageSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 75,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        color: Color(0xff00A59B).withOpacity(0.05),
        border: Border.all(
          width: 1.0,
          color: Color(0xff00A59B),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Rp. 252.000",
            style: whiteTextStyle.copyWith(
              color: Color(0xff00A59B),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "500 Pellets",
            style: whiteTextStyle.copyWith(
              color: Color(0xff00A59B),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
