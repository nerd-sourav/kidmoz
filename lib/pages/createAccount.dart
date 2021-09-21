import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/components/textField.dart';
import 'package:kidmoz/pages/signupScreen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
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
                      top: 0,
                      right: 0,
                      child: Container(
                        width: size.width / 2.3,
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
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 20,
                    letterSpacing: 1),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.height / 50,
                    letterSpacing: 1),
              ),
              CustomTextField(
                hintText: "Username",
                iconString: Icons.person_outlined,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: SignUpButtons(
                  size: size,
                  buttonText: "Continue",
                ),
              ),
              SizedBox(height: 25),
              SizedBox(height: 150),
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
