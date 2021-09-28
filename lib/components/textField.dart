import 'package:flutter/material.dart';

import 'package:kidmoz/modals/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.iconString,
  }) : super(key: key);
  final String hintText;
  final IconData iconString;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
      height: 100,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width - 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
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
              ],
            ),
            padding: EdgeInsets.only(left: 90),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hintText),
            ),
          ),
          Positioned(
            // left: 0,
            // top: 0,
            // bottom: 0,
            child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                        color: MyTheme.lightBlue,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 1000.0,
                        spreadRadius: 1.0),
                  ],
                ),
                child: Center(
                  child: Icon(
                    iconString,
                    size: 35,
                    color: MyTheme.fadeBlue,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
