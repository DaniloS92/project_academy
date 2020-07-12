import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/images/image.jpg";
  String name = "Danilo Sanchez";
  String details = "1 review 5 photos";
  String comment = " There is an amazing bla bla bla";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userStar = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 14.0,
      ),
    );

    final userStarts = new Row(
      children: <Widget>[
        userStar,
        userStar,
        userStar,
        userStar,
        userStar
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),

          child: Text(
            details,
            textAlign: TextAlign.center,
            style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        userStarts
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
//        userStarts
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}