import 'package:flutter/material.dart';
import 'package:session3_tasks/screen1.dart';
import 'package:session3_tasks/screen2.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   useMaterial3: true
      // ),
      home: Screen2(),
    );
  }

}