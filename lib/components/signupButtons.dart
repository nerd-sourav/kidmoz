import 'package:flutter/material.dart';
import 'package:kidmoz/modals/constants.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({
    Key? key,
    required this.buttonText,
    required this.size,
  }) : super(key: key);
  final String buttonText;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1),
      height: 40,
      margin: EdgeInsets.only(top: 5, bottom: 20),
      width: size.width / 1.7,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [MyTheme.darkBlue, MyTheme.skyBlue],
            ),
            boxShadow: [
              BoxShadow(
                  color: MyTheme.lightBlue,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 8.0,
                  spreadRadius: 1.0),
            ]),
        child: Center(
            child: Text(buttonText,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    letterSpacing: 2))),
      ),
    );
  }
}
