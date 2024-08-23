import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/success_controller.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  Widget build(context, SuccessController controller) {
    controller.view = this;
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
                            Text("Thank You",
                                style: primaryTextStyle.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Your Order will be delivered with invoice #INV20240817. You can track the delivery in the order section.",
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
                        MaterialPageRoute(builder: (context) => SuccessView()),
                      );
                    },
                    child: Center(
                      child: Text("Place Order @ Rp 185.000",
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

  @override
  State<SuccessView> createState() => SuccessController();
}
