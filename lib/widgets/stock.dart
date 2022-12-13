import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Stock extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? wordSpacing;

  final TextDirection? textDirection;
  final TextDecoration? decoration;
  final primaryColor = HexColor('#1c1c1c');
  final primaryColor2 = Colors.grey[900];
  final white = Colors.white;
  final green = HexColor('#36a25d');
  final catagoryListColor = HexColor('#545454');

  Stock({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDirection,
    this.wordSpacing,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.poppins(
        decoration: decoration,
        fontSize: fontSize != null ? fontSize : 14,
        // fontFamily: fontFamily != null ? fontFamily : fontFamily,
        fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,
        color: color != null ? color : white,
        wordSpacing: wordSpacing,
      ),
      maxLines: maxLines,
      textAlign: TextAlign.justify,
      textDirection: textDirection,
      overflow: TextOverflow.ellipsis,
    );
  }
}
