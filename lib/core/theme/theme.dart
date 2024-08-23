import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0XFF090F47);
Color greyColor = const Color(0XFF090F47).withOpacity(0.45);
Color greenColor = const Color(0XFF00A59B);
Color whiteColor = const Color(0XFFFFFFFF);

TextStyle primaryTextStyle =
    GoogleFonts.overpass(fontWeight: FontWeight.w500, color: primaryColor);
TextStyle greyTextStyle = GoogleFonts.overpass(
    fontWeight: FontWeight.w500, color: primaryColor.withOpacity(0.45));
TextStyle whiteTextStyle = GoogleFonts.overpass(fontWeight: FontWeight.w500);

TextStyle sofiaTextStyle = GoogleFonts.overpass(color: greyColor, fontSize: 14);


