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
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: size.width / 7,
          height: size.height / 14,
          child: Image.asset(imageLocation),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: MyTheme.lightBlue,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 8.0,
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
