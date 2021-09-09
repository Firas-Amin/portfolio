import 'package:flutter/material.dart';
import 'package:portfolio/animations/animatedCard.dart';
import 'package:portfolio/constants/CostumText.dart';
import 'package:portfolio/constants/ProjectCard.dart';


class ProjectPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),

      child: Column(
        children: [
          Heading(text: "Projects",),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: "images/flutter.png",
                    projectIcon:"images/flutter.png" ,
                      projectTitle: "MyTrainer",
                    projectDescription: "MyTrainer",
                    projectLink: "Null",
                  ),
                );
              },
              itemCount:1,
            ),
          ),

        ],
      ),
    );
  }
}
