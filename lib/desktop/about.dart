import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/CostumText.dart';

class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      child: Column(
        children: [
          Heading(text: "ABOUT ME",),
          SizedBox(height: 30.0),
          WebText(
       text: "I'm Firas Amin, junior flutter developer ",
        style: TextStyle(
      fontSize: height * 0.03,
        fontWeight: FontWeight.w400,
      ),
        textAlign: TextAlign.center,
      ),
          SizedBox(
            height: height * 0.02,
          ),
          WebText(
            text: "I have been passionate about technology since I was kid, I start using the computer when I was 12 years old. Since that I started my journey. Currently I'm developing mobile apps for over 1 year now. I Earned A grade on mobile-based project that manage theAlternatives of the Athletic User's Fitness in the Health club during Covid-19'sLockdown.   ",
            style: TextStyle(
              fontSize: height * 0.02,
              color: Colors.grey[500],
              height: 2.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:width * 0.02 ),
            decoration: BoxDecoration(
              border: Border(
                bottom:
                BorderSide(color: Colors.grey[800], width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          WebText(text:"Programming Languages I have worked with :", style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: height * 0.018),),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage("images/java.png"),
                   width: 100,
                  height: 100,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage("images/flutter.png"),
                  width: 100,
                  height: 100,
                ),
              ),

            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:width * 0.02 ),
            decoration: BoxDecoration(
              border: Border(
                bottom:
                BorderSide(color: Colors.grey[800], width: 2.0),
              ),
            ),
          ),

        ],
      ),
    );
  }
}




class AboutMeMetaData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment alignment;

  const AboutMeMetaData({Key key, this.data, this.information, this.alignment})
      : super(key: key);
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: height * 0.018,
                color:  Colors.white,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                fontSize: height * 0.018,
                letterSpacing: 1.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}