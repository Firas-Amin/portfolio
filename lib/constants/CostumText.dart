import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  const WebText({Key key,@required this.text, this.style, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
class Heading extends StatelessWidget {
  final String text;

  const Heading({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w200,
        fontSize: MediaQuery.of(context).size.height * 0.075,
      ),



    );
  }
}
