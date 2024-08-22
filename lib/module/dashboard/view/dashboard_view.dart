import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 268,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 215,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                      ),
                      Positioned(
                        top: 189,
                        left: 34,
                        child: Container(
                          width: 327,
                          height: 50,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(56),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Top Categories",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 70,
                          margin: EdgeInsets.symmetric(vertical: 24),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/bannerImage1.png",
                            width: 326,
                            height: 140,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
