import 'package:flutter/material.dart';
import 'package:kidmoz/components/bottomLogo.dart';
import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/components/textField.dart';
import 'package:kidmoz/pages/loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.2,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -230,
                      right: -70,
                      child: Container(
                        width: size.width / 1,
                        child: Image.asset("assets/images/bigCircle.png"),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: 30,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Container(
                          width: size.width / 2.2,
                          child: Container(
                              height: 50,
                              width: 50,
                              child:
                                  Image.asset("assets/images/semicircle.png")),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 30,
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width / 4,
                        child: Image.asset("assets/images/semicircle.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Center(
                        child: Container(
                          width: size.width / 4,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 40,
                      child: Center(
                        child: Container(
                          width: size.width / 10,
                          child: Image.asset("assets/images/smallCircle.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 20,
                    letterSpacing: 1),
              ),
              Text(
                "Create your account",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 50,
                    letterSpacing: 1),
              ),
              CustomTextField(
                  hintText: "Email", iconString: Icons.email_outlined),
              CustomTextField(
                hintText: "Password",
                iconString: Icons.lock_outline_rounded,
              ),
              SignUpButtons(
                size: size,
                buttonText: "Sign Up",
              ),
              Text("----------------- Or sign up with -----------------",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: size.height / 60,
                      letterSpacing: 1)),
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: AlreadyText(
                  size: size,
                  text1: "Already have an account?",
                  text2: "Sign in here",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
