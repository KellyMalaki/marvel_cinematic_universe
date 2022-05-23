import 'package:flutter/material.dart';

class PlayMovieButton extends StatefulWidget {
  const PlayMovieButton({Key? key}) : super(key: key);

  @override
  State<PlayMovieButton> createState() => _PlayMovieButtonState();
}

class _PlayMovieButtonState extends State<PlayMovieButton> {
  @override
  Widget build(BuildContext context) {
    Future noMovieDialog() =>  showDialog(context: context, builder: (context) => AlertDialog(title: Text("Sorry, just for demonstration"), content: Text("The Play button is just used to completely mimic a movie streaming platform. It does nothing apart from displaying this dialog."),
        actions: [TextButton(onPressed: () {
          Navigator.of(context).pop();
        }, child: const Text("Ok"))
        ]
    ));
    return IconButton(onPressed: (){
      noMovieDialog();
    }, icon: Icon(Icons.play_circle_fill,
    color: Colors.red[800],
    size: 80,
    ));
  }
}
