import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConstant {
  static TextStyle defFont = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600));
  static TextStyle defSmallFont = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600));
  static TextStyle appBarFont = GoogleFonts.poppins(
    textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
  );
  static TextStyle defTabFont = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w600));
}
