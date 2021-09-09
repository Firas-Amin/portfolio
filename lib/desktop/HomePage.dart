import 'package:flutter/material.dart';
import 'package:portfolio/animations/EntranceFader.dart';

import 'about.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);

    return Stack(

      children: [

        Container(
          width: width,
          height: height * 0.5,
          child: EntranceFader(
            offset: Offset(0, 0),
            delay: Duration(seconds: 1),
            duration: Duration(milliseconds: 800),
            child: Image.asset(
              'images/logo12.png',
              height: width < 1200 ? height * 0.8 : height * 0.85,
            ),
          ),
        ),
        Positioned( // يخليني احدد وين أحط الوديج
          top: height * 0.4, // عشان لا تكون فوق اللوقو ندفها من فوق ع طول الشاشة
          child: Container(
            width: width,
            height: height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO MY PORTFOLIO",
                  style: TextStyle(
                    fontSize: height * 0.03,
                  ),
                ),
                Text(
                  "My Name is Firas, and I'm a flutter developer ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset("Images/github.png")),
                      label: Text('Github'),
                      onPressed: () => print("gtihub"),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset("Images/linkedin.png")),
                      label: Text('linkedin'),
                      onPressed: () => print("linkedin"),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Icon(Icons.mail)),
                      label: Text('Mail'),
                    ),

                  ],
                ),


              ],

            ),

          ),
        ),
      ],
    );
  }
}
