import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String pathImage = "assets/img/pablo.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Column(
      children: [
        Review(pathImage, "Carmen", "Escritora", "Sin comentarios")
      ],
    );
  }

}