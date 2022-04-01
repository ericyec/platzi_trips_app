import 'package:flutter/material.dart';

class StarsReview extends StatelessWidget{

  final double numberStars;

  StarsReview(this.numberStars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3
      ),

      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );


    // Estrella a la mitad
    final starHalf = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3
      ),

      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );


    // Estrella vacia
    final starBorder = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3
      ),

      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    return Row(
      children: [
        star, star, starHalf, starHalf, starBorder
      ],
    );
  }

}