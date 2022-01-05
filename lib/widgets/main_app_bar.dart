import 'package:Lists/controllers/utility_controller.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar(UtilitiesController utilController) {
  return AppBar(
    leading: Icon(Icons.search),
    bottom: TabBar(
      tabs: utilController.tabs.map((e) => Tab(child: Text(e))).toList(),
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: kPrimaryColor,
      indicatorColor: kPrimaryColor,
      unselectedLabelStyle: TextStyle(fontSize: 11),
      labelStyle: TextStyle(fontSize: 12),
      unselectedLabelColor: Colors.grey,
      controller: utilController.tabBarController,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage:
              NetworkImage("https://behonbaker.com/behonbaker.png", scale: 0.7),
        ),
      )
    ],
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    title: const Text("Play Store"),
  );
}
