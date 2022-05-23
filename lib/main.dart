import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Marvel Cinematic Universe",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}