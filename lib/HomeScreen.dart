import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

import 'animations/EntranceFader.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final List<String> appBarList = [
      'Home',
      'About',
    ];
    final scrollController = ScrollController();


    return Scaffold(
      floatingActionButton:FloatingActionButton(
        child: Icon(
          Icons.arrow_upward_sharp
        ),
        onPressed: (){
          scrollController.animateTo(0.0, duration:Duration(seconds: 1), curve: Curves.easeInOut);
        },
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: EntranceFader(
          offset: Offset(0, -20),
          duration: Duration(seconds: 1),
          delay: Duration(seconds: 3),
          child: Image(
          ),
        ),
        actions: [
          for (int i = 0; i < appBarList.length; i++)
            _appBarActions(context,appBarList[i], i),
          EntranceFader(
            offset: Offset(0, -20),
            delay: Duration(seconds: 3),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: Colors.red.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {
                  html.window.open(
                      'https://twitter.com/home',
                      "pdf");
                },
                child: Text(
                  "Resume",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: List.generate(500, (index) => Text("flutter $index"))
            ),
          ),
        )
      ),
    );
  }
}

Widget _appBarActions(BuildContext context,String childText, int index) {
  return
    EntranceFader(
    offset: Offset(0, -20),
    delay: Duration(seconds: 3),
    duration: Duration(seconds: 1),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        hoverColor: Colors.red,
        onPressed: (){},
        child: Text(
          childText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
