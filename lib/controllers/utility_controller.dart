import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilitiesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var bottomNavIndex = 0.obs;
  var tabBarIndex = 0.obs;
  List<String> tabs = [
    "For you",
    "Top charts",
    "Kids",
    "Events",
    "Women",
    "Men",
    "Gamers"
  ];
  late TabController tabBarController;

  changeBottomNavIndex(int i) => bottomNavIndex.value = i;

  @override
  void onInit() {
    super.onInit();
    tabBarController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();
    tabBarController.dispose();
  }
}
