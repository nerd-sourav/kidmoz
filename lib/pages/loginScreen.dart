import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Material(
                elevation: 20.0,
                shadowColor: Colors.blue,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusColor: MyTheme.fadeBlue),
                ),
              ),
              Material(
                elevation: 20.0,
                shadowColor: Colors.blue,
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      icon: new Icon(Icons.lock, color: Color(0xff224597)),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 3.0))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AspectRatio(
                aspectRatio: 100 / 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 5, 10, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
              ),
              Text("----------------- Or sign up with -----------------",
                  style: TextStyle(fontFamily: 'Roboto', letterSpacing: 1)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomLogo(imageLocation: "assets/images/google.png"),
                  SizedBox(width: 40),
                  BottomLogo(imageLocation: "assets/images/facebook.png"),
                  SizedBox(width: 40),
                  BottomLogo(imageLocation: "assets/images/twitter.png"),
                ],
              ),
              SizedBox(height: 20),
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

class BottomLogo extends StatelessWidget {
  final String imageLocation;
  const BottomLogo({
    Key? key,
    required this.imageLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 50,
          height: 50,
          child: Image.asset(imageLocation),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: MyTheme.lightBlue,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        )
      ],
    );
  }
}
