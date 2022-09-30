import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';
import 'package:krishi_bazar/ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const HomePage(),
    );
  }
}
