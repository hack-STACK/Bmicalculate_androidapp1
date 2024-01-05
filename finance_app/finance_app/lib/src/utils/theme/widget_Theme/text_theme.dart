import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NAtextTheme {
static TextTheme lightTextTheme = TextTheme(
  displayMedium: GoogleFonts.montserrat(
    color: Colors.black87,
    fontSize: 20,fontWeight: FontWeight.bold
  ),
  titleSmall: GoogleFonts.poppins(
    color: const Color.fromARGB(209, 0, 0, 0),
    fontSize: 24
  ),

);


 static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 20,fontWeight: FontWeight.bold
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24
    ),
 );
}