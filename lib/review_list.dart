import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  String pathImage = "assets/images/image.jpg";
  String name = "Danilo Sanchez";
  String details = "1 review 5 photos";
  String comment = " There is an amazing bla bla bla";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review(pathImage, name, details, comment),
        new Review(pathImage, name, details, comment),
        new Review(pathImage, name, details, comment),
        new Review(pathImage, name, details, comment),
      ],
    );
  }

}