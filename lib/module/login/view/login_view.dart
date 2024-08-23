import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Wellcome Back",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                style: greyTextStyle.copyWith(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: greyColor,
                  ),
                  prefixIcon: ImageIcon(
                    const AssetImage(
                      "assets/images/peopleIcon.png",
                    ),
                    color: primaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor.withOpacity(0.1),
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                obscureText: true,
                style: greyTextStyle.copyWith(fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: greyColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    size: 26.0,
                  ),
                  suffix: Text("Forgot?"),
                  suffixStyle: greyTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor.withOpacity(0.1),
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 56.0,
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
                      MaterialPageRoute(builder: (context) => DashboardView()),
                    );
                  },
                  child: Center(
                    child: Text("Sign In",
                        style: whiteTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 12,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        "Don’t have an account? Sign Up",
                        style: greyTextStyle,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
