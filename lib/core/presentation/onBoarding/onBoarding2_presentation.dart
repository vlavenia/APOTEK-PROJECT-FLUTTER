import 'package:flutter/material.dart';
import 'package:medhub/core.dart';

class Onboarding2Presentation extends StatelessWidget {
  const Onboarding2Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/onBoarding2.png",
                width: 256.3,
                height: 284,
                // fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Online medical &\nHealthcare",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF090F47),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
                  style: TextStyle(
                    color: Color.fromRGBO(9, 15, 71, 0.45),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Back"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WellcomePresentation()),
                          );
                        },
                        child: Text(
                          "Next",
                          style: primaryTextStyle.copyWith(
                            color: greenColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
