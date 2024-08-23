// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:medhub/core.dart';
import 'package:medhub/core/theme/theme.dart';
import 'package:medhub/module/register/view/registersuccess_view.dart';

class VerivyOtpPages extends StatefulWidget {
  const VerivyOtpPages({Key? key}) : super(key: key);

  @override
  State<VerivyOtpPages> createState() => _VerivyOtpPagesState();
}

class _VerivyOtpPagesState extends State<VerivyOtpPages> {
  //  Verif Code
  bool _onEditing = true;
  String? _code;

  // Increment Decrement
  int quantity = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter The Verivy Code",
                  style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "We just send you a verification code via phone\n+62 821 39 488 953",
                  style: greyTextStyle,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Column(
                  children: [
                    VerificationCode(
                      
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Theme.of(context).primaryColor),
                      keyboardType: TextInputType.number,
                      underlineColor: Colors.amber, length: 4,
                      cursorColor: Colors
                          .blue, // If this is null it will default to the ambient
                      // clearAll is NOT required, you can delete it
                      // takes any widget, so you can implement your design

                      margin: const EdgeInsets.all(12),
                      
                      clearAll: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Resend Code',
                          style: TextStyle(
                              fontSize: 14.0,
                              decoration: TextDecoration.underline,
                              color: greenColor),
                        ),
                      ),
                      onCompleted: (String value) {
                        setState(() {
                          _code = value;
                        });
                      },
                      onEditing: (bool value) {
                        setState(() {
                          _onEditing = value;
                        });
                        if (!_onEditing) FocusScope.of(context).unfocus();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
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
                                      builder: (context) =>
                                          RegisterSuccessView()),
                                );
                              },
                              child: Center(
                                child: Text("SUBMIT CODE",
                                    style: whiteTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 23.0,
                          ),
                          Text("The verify code will expire in 00:59"),
                          
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
