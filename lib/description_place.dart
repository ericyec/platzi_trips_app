// Importar la libreria de material design, para los widgets
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platzi_trips_app/stars_review.dart';

// Los nombres de las clases inician con mayusculas
class DescriptionPlace extends StatelessWidget {

  final String namePlace;
  final int numberStars;
  final String descriptionPlace;

  // Constructor
  const DescriptionPlace(this.namePlace, this.numberStars, this.descriptionPlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),

      child: Text(
        descriptionPlace,
        style: GoogleFonts.alumniSans(
          color: Colors.black54,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        )
/*        style: const TextStyle(
          //fontFamily: "Lato",
          color: Colors.black54,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),*/
      ),
    );

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


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        StarsReview(3.5)
/*        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        ),*/

      ],
    );

    return Column(
      children: [
        titleStars,
        description
      ],
    );
  }

}