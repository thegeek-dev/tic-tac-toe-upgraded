import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoveHolder extends StatelessWidget {
  final String move;

  const MoveHolder({Key? key, required this.move}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final playBoxSize = 0.80 * size.width;
    final double fontSize = playBoxSize / 5;
    return SizedBox(
      width: playBoxSize / 6,
      child: Text(
        move,
        textAlign: TextAlign.center,
        style: GoogleFonts.balsamiqSans(
          fontSize: fontSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
