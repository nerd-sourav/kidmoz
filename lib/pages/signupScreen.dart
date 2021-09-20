import 'package:flutter/material.dart';
import 'package:kidmoz/components/bottomText.dart';
import 'package:kidmoz/components/signupButtons.dart';
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
              SignUpButtons(
                size: size,
                buttonText: "Continue",
              ),
              SizedBox(height: 25),
              SizedBox(height: 25),
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
