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
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
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
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/google.png"),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
