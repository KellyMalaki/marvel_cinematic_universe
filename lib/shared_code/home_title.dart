import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/shared_code/text_widgets.dart';

class HomeTitle extends StatelessWidget {
  final String theText;
  const HomeTitle({Key? key, required this.theText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return homeText(theText);
  }
}
