// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListProfileWidget extends StatelessWidget {
  const ListProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Image.asset(
            "assets/icon/itemprofile1_icon.png",
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Private Account"),
                    const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                width: 309,
                height: 1,
                color: Color(0xff091C3F).withOpacity(0.08),
              )
            ],
          ),
        ],
      ),
    );
  }
}
