import 'package:flutter/material.dart';
import 'package:kidmoz/modals/constants.dart';

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
