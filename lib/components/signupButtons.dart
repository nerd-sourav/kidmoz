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
      margin: EdgeInsets.all(40),
      width: size.width / 2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [MyTheme.lightBlue, MyTheme.fadeBlue],
          ),
        ),
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
