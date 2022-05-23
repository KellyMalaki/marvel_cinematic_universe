import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/shared_code/play_movie.dart';
import 'package:marvel_cinematic_universe/shared_code/text_widgets.dart';

import '../objects/movie_object.dart';

class MovieInDetail extends StatelessWidget {
  final Movie movie;
  const MovieInDetail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image.asset("images/${movie.image}"),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            ),
            SizedBox(height: 15,),
            ListTile(
              title: detailsMovieName(movie.name),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  detailsMovieYear(movie.year),
                  detailsMovieLength(movie.duration),
                  detailsMovieRating(movie.rating)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(15.0),
            child: detailsMovieDetails(movie.details),),
            PlayMovieButton()
          ],
        ),
      ),
    );
  }
}
