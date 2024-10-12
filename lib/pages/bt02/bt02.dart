import 'package:flutter/material.dart';

class Bt02 extends StatelessWidget {
  const Bt02({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [boxMethod(), boxMethod()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [boxMethod(), boxMethod()],
            ),
          ],
        ),
        Center(child: boxMethod(true)),
        Center(child: boxMethod(true, true)),
      ]),
    );
  }

  Container boxMethod([bool isRoundShape = false, bool isSmaller = false]) {
    double boxSizeWidth = 148;
    double boxSizeHeight = 117;
    double bigCircleSize = 200;
    double smallCircleSize = 70;
    return Container(
      decoration: BoxDecoration(
        color: isRoundShape
            ? (isSmaller ? const Color(0xFFFF0202) : const Color(0xFF6843FC))
            : const Color(0xFF55B1AC),
        borderRadius: isRoundShape
            ? BorderRadius.circular(100)
            : BorderRadius.circular(0),
      ),
      width: isRoundShape
          ? (isSmaller ? smallCircleSize : bigCircleSize)
          : boxSizeWidth,
      height: isRoundShape
          ? (isSmaller ? smallCircleSize : bigCircleSize)
          : boxSizeHeight,
    );
  }
}
