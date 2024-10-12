import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

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
              children: [
                boxMethod('Box 1 ', Alignment.bottomRight),
                boxMethod('Box 2', Alignment.bottomLeft)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boxMethod('Box 3 ', Alignment.bottomRight),
                boxMethod('Box 4', Alignment.bottomLeft)
              ],
            ),
          ],
        ),
        Center(child: boxMethod('Hello World', Alignment.center, true))
      ]),
    );
  }

  Container boxMethod(String name, Alignment alignment,
      [bool isRoundShape = false]) {
    return Container(
      decoration: BoxDecoration(
          color: isRoundShape ? Colors.blue : Colors.green,
          borderRadius: isRoundShape
              ? BorderRadius.circular(80)
              : BorderRadius.circular(0)),
      alignment: alignment,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.pink),
      ),
    );
  }
}
