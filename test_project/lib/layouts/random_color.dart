import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/provider/randomProvider.dart';
import '../shared/global.dart';

class RandomColor extends StatelessWidget {
  static const id = 'RandomColor';
  RandomColor({super.key});

  String greeting = 'Hi there!'; //Text to show

  @override
  Widget build(BuildContext context) {
    return Consumer<RandomProvider>(
      builder: (context, random, child) => Scaffold(
        body: GestureDetector(
          //to detect Tap and change color
          onTap: () {
            Provider.of<RandomProvider>(context, listen: false).setRandom();
          },
          child: Container(
            color: Color.fromARGB(
                //background color changes with provider
                random.opacity.toInt(),
                random.r,
                random.g,
                random.b),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  greeting,
                  style: mainTextStyle(random),
                ),
                Slider(
                  //to change the opacity
                  min: 1,
                  max: 255,
                  value: random.opacity,
                  onChanged: (value) {
                    random.setOpacity(value);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
