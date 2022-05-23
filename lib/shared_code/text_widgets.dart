import 'package:flutter/material.dart';

Widget homeText(String name){
  return Text(name, style:
  const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
    color: Colors.white
  ),);
}

Widget subMenuText(String name){
  return Text(name, style:
  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
      color: Colors.red[800]
  ),);
}

Widget listMovieName(String name){
  return Text(name, style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.white
  ),);
}

Widget listMovieYear(String name){
  return Text(name, style:
  TextStyle(
      fontSize: 15.0,
      color: Colors.blue[300]
  ),);
}

Widget listMovieDuration(String name){
  return Text(name, style:
  TextStyle(
      fontSize: 15.0,
      color: Colors.green[300]
  ),);
}

Widget listMovieRating(String name){
  return Text(name, style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.orange
  ),);
}

Widget detailsMovieName(String name){
  return Text(name, style:
  const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25.0,
      color: Colors.white
  ),);
}

Widget detailsMovieYear(String name){
  return Text(name, style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.white60
  ),);
}
Widget detailsMovieRating(String name){
  return Text("$name/10", style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.white60
  ),);
}
Widget detailsMovieLength(String name){
  return Text(name, style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.white60
  ),);
}
Widget detailsMovieDetails(String name){
  return Text(name, style:
  const TextStyle(
      fontSize: 20.0,
      color: Colors.white70
  ),);
}