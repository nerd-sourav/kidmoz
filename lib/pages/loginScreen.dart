import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:kidmoz/components/bottomLogo.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/modals/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: size.width / 4,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 25),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 40, letterSpacing: 1),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 15, letterSpacing: 1),
              ),
              SignUpButtons(
                size: size,
                buttonText: "Login",
              ),
              Text("----------------- Or sign up with -----------------",
                  style: TextStyle(fontFamily: 'Roboto', letterSpacing: 1)),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomLogo(imageLocation: "assets/images/google.png"),
                  SizedBox(width: size.width / 10),
                  BottomLogo(imageLocation: "assets/images/facebook.png"),
                  SizedBox(width: size.width / 10),
                  BottomLogo(imageLocation: "assets/images/twitter.png"),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontFamily: 'Roboto', letterSpacing: 1),
                  ),
                  Text(
                    " Sign in here",
                    style: TextStyle(
                        color: MyTheme.fadeBlue,
                        fontFamily: 'Roboto',
                        letterSpacing: 1),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
