import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kidmoz/components/bottomLogo.dart';
import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
import 'package:kidmoz/components/textField.dart';
import 'package:kidmoz/pages/createAccount.dart';
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
                      top: -85,
                      left: -85,
                      child: Container(
                        width: size.width / 1.5,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 110,
                              top: 110,
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      "assets/images/smallCircle.png")),
                            ),
                            Image.asset("assets/images/arc.png"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 22,
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
                  ],
                ),
              ),

              //SizedBox(height: 10),
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
              CustomTextField(
                hintText: "Username",
                iconString: Icons.person_outline_outlined,
              ),
              CustomTextField(
                hintText: "Password",
                iconString: Icons.lock_outline_rounded,
              ),

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
                      MaterialPageRoute(builder: (context) => CreateScreen()));
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
