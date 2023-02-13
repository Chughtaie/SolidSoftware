import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/layouts/random_color.dart';

import 'provider/randomProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  RandomProvider randomProvider = RandomProvider();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RandomProvider>(
          create: (context) => randomProvider,
        ),
      ],
      child: MaterialApp(
        title: 'Demo App for Solid Software',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RandomColor.id,
        routes: {
          RandomColor.id: (context) => RandomColor(), //Color changing screen
        },
      ),
    );
  }
}
