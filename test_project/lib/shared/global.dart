import 'package:flutter/material.dart';

import '../provider/randomProvider.dart';

TextStyle mainTextStyle(RandomProvider random) {
  return TextStyle(
    color: Color.fromARGB(200, random.g, random.b, random.r),
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
}
