import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:kidmoz/components/bottomLogo.dart';
import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/components/textField.dart';
import 'package:kidmoz/modals/constants.dart';
import 'package:kidmoz/pages/signupScreen.dart';

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
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: size.width / 3,
                        child: Image.asset("assets/images/bigCircle.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width / 4,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 25,
                    letterSpacing: 1),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 60,
                    letterSpacing: 1),
              ),
              CustomTextField(),
              CustomTextField(),
              SignUpButtons(
                size: size,
                buttonText: "Login",
              ),
              Text("----------------- Or sign up with -----------------",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: size.height / 60,
                      letterSpacing: 1)),
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
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: AlreadyText(
                  size: size,
                  text1: "Don't have an account?",
                  text2: "Sign up here",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
