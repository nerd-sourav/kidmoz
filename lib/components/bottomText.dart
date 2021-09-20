import 'package:flutter/material.dart';
import 'package:kidmoz/modals/constants.dart';

class AlreadyText extends StatelessWidget {
  const AlreadyText({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final Size size;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: size.height / 60,
              letterSpacing: 1),
        ),
        Text(
          text2,
          style: TextStyle(
              color: MyTheme.fadeBlue,
              fontFamily: 'Roboto',
              fontSize: size.height / 60,
              letterSpacing: 1),
        ),
      ],
    );
  }
}
