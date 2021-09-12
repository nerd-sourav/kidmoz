import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidmoz/modals/constants.dart';
import 'package:kidmoz/modals/data.dart';
import 'package:kidmoz/pages/loginScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  //function to dispose the controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //using page-view builder for sliding of the screens.
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 400,
                      ),
                      Center(
                        child: CircularPercentIndicator(
                          radius: 120,
                          animation: true,
                          lineWidth: 6,
                          backgroundColor: Colors.transparent,
                          animationDuration: 800,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: (i + 1) / (contents.length),
                          progressColor: MyTheme.lightBlue,
                          center: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              contents[i].title,
                              height: 400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: MyTheme.darkBlue,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          //using animated container for the dots to be animated.
          AnimatedContainer(
            duration: Duration(seconds: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 2),
            height: 50,
            margin: EdgeInsets.all(40),
            width: 400,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      colors: [MyTheme.lightBlue, MyTheme.fadeBlue])),
              child: GestureDetector(
                onTap: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginScreen(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          currentIndex == contents.length - 1
                              ? "Continue"
                              : "Next",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      height: 7,
      width: currentIndex == index ? 30 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyTheme.lightBlue,
      ),
    );
  }
}
