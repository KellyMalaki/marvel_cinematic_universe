import 'package:flutter/material.dart';

class PlayMovieButton extends StatefulWidget {
  const PlayMovieButton({Key? key}) : super(key: key);

  @override
  State<PlayMovieButton> createState() => _PlayMovieButtonState();
}

class _PlayMovieButtonState extends State<PlayMovieButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _pulseAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
    vsync: this,
      duration: const Duration(milliseconds: 300),

    );
    _pulseAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
      tween: Tween<double>(begin: 80, end: 120),
    weight: 75
    ),
    TweenSequenceItem<double>(
    tween: Tween<double>(begin: 120, end: 80),
    weight: 25
    )
      ]
    ).animate(_controller);
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future noMovieDialog() =>  showDialog(context: context, builder: (context) => AlertDialog(title: Text("Sorry, just for demonstration"), content: Text("The Play button is just used to completely mimic a movie streaming platform. It does nothing apart from displaying this dialog."),
        actions: [TextButton(onPressed: () {
          Navigator.of(context).pop();
        }, child: const Text("Ok"))
        ]
    ));
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        noMovieDialog();
      }
    });
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _){
        return IconButton(onPressed: (){
          _controller.forward(from: 0);
        }, icon: Icon(Icons.play_circle_fill,
          color: Colors.red[800],
          size: _pulseAnimation.value,
        ));
      },
    );
  }
}
