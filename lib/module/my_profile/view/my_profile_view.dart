import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/my_profile/widget/listprofile_widget.dart';
import '../controller/my_profile_controller.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({super.key});

  Widget build(context, MyProfileController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My Profile",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 26.0,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/ProfileUser2_image.png",
                      width: 95,
                      height: 95,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Lorem Ipsum",
                            style: primaryTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Wellcome to MedHub",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: Column(
                    children: [
                      ListProfileWidget(),
                      ListProfileWidget(),
                      ListProfileWidget(),
                      ListProfileWidget(),
                      ListProfileWidget(),
                      ListProfileWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MyProfileView> createState() => MyProfileController();
}
