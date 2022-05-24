import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:marvel_cinematic_universe/shared_code/home_title.dart';
import 'package:marvel_cinematic_universe/shared_code/text_widgets.dart';

import '../shared_code/movie_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Container(
        decoration: const BoxDecoration(
            image:DecorationImage(
                image:AssetImage("images/bg.jpg"),
                fit:BoxFit.fitWidth,
                alignment: Alignment.topLeft
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.width)*0.5625,
                  child: const HomeTitle(theText: "Marvel Cinematic Universe"),
                ),
                Center(child: subMenuText("Movies")),
                const Flexible(child: MovieList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
