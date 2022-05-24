import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/shared_code/text_widgets.dart';

class HomeTitle extends StatelessWidget {
  final String theText;
  const HomeTitle({Key? key, required this.theText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: homeText(theText),
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.easeIn,
      duration: const Duration(seconds: 1),
      builder: (BuildContext context, double _theOpacity, Widget? theText){
        return Opacity(
          opacity: _theOpacity,
          child: Padding(
            padding: EdgeInsets.only(top: _theOpacity*10),
            child: theText,
          ),
        );
      },
    );
  }
}
