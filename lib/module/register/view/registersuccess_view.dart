import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';
import 'package:medhub/module/main_navigation/view/main_navigation_view.dart';

class RegisterSuccessView extends StatelessWidget {
  const RegisterSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(65),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/acceptedIcon.png",
                                width: 245.18,
                                height: 196.57,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Phone Number Verified",
                                style: primaryTextStyle.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Congradulations, your phone number has been verified. You can start using the app",
                              style: primaryTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(56),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainNavigationView()),
                      );
                    },
                    child: Center(
                      child: Text("CONTINUE",
                          style: whiteTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
