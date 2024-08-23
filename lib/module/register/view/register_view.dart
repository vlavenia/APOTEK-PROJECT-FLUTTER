import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import 'package:medhub/module/register/view/verivy.dart';
import 'package:medhub/module/register/view/verivyotp_view.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            children: [
              Text(
                "Create Your Account",
                style: primaryTextStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: greenColor,
                    ),
                  ),
                  labelText: 'Your Name',
                  labelStyle: greyTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: greenColor,
                    ),
                  ),
                  labelText: 'Mobile Number',
                  labelStyle: greyTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: greenColor,
                    ),
                  ),
                  labelText: 'Email',
                  labelStyle: greyTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: greenColor,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: greyTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
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
                            builder: (context) => VerivyOtpPages()),
                      );
                    },
                    child: Center(
                      child: Text("CREATE ACCOUNT",
                          style: whiteTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
