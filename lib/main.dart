import 'package:animations/animatedcontainer.dart';
import 'package:animations/fadetransition.dart';
import 'package:animations/scaletransition.dart';
import 'package:animations/slidetransition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:ScaleTransitionExample(),
    );
  }
}