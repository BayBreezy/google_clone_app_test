import 'package:Lists/constants.dart';
import 'package:Lists/widgets/detail_heading.dart';
import 'package:Lists/widgets/detail_screenshot.dart';
import 'package:Lists/widgets/detail_stats.dart';
import 'package:Lists/widgets/detail_tags.dart';
import 'package:Lists/widgets/install_button.dart';
import 'package:Lists/widgets/section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);
  var tags = [
    "Strategy",
    "Fun",
    "Adventure",
    "Online",
    "Multiplayer",
    "Stylish"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: ListView(
        children: [
          DetailHeading(),
          DetailStats(),
          InstallButton(),
          DetailsScreenshot(),
          SectionHeading(
            title: "About this game",
            icon: Icons.arrow_forward,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Text("Smash Bros game. Full of adventure & Fun!"),
          ),
          DetailTags(tags: tags),
          SectionHeading(
            title: "Ratings and reviews",
            icon: Icons.arrow_forward,
          ),
        ],
      ),
    );
  }
}
