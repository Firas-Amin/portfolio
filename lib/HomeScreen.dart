import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> appBar = [
      'CV',
      'about',
      'services',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4760F0),
        elevation: 0.0,
        title: Text("Firas Ameen"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child:Text("Resume",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),),),
            ],
          )

        ],
      ),
      body: Container(
        child: Text(
            "Welcome to My Protofile"
        ),
      ),
    );
  }
}


Widget appBarDesktop(){

  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,


  );

}