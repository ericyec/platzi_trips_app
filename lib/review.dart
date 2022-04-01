import 'package:flutter/material.dart';
import 'stars_review.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/img/pablo.jpg";
  String name = "Eric Rodgx";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComent = Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
            //color: Color(0xFFa3a5a7)
        ),
      ),
    );


    final userDetail = Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );



    final userInfoAndStars = Row(
      children: [
        userDetail,
        StarsReview(5)
      ],
    );


    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        userName,
        userInfoAndStars,
        userComent
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
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
      children: [
        photo,
        userDetails
      ],
    );

  }

}