import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';
// import 'package:medhub/module/checkout/controller/checkout_controller.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerivyCodePage extends StatefulWidget {
  const VerivyCodePage({super.key});

  @override
  State<VerivyCodePage> createState() => _VerivyCodePageState();
}

class _VerivyCodePageState extends State<VerivyCodePage> {
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
      body: SafeArea(
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
                      clearAll: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'clear all',
                          style: TextStyle(
                              fontSize: 14.0,
                              decoration: TextDecoration.underline,
                              color: Colors.blue[700]),
                        ),
                      ),
                      margin: const EdgeInsets.all(12),
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
                      child: Center(
                        child: _onEditing
                            ? const Text('Please enter full code')
                            : Text('Your code: $_code'),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
