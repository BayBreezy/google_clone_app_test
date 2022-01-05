import 'package:Lists/controllers/utility_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.utilController,
  }) : super(key: key);

  final UtilitiesController utilController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.gamepad_outlined,
              ),
              label: "Games"),
          BottomNavigationBarItem(
            label: "Apps",
            icon: Icon(
              Icons.grid_view_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Books",
            icon: Icon(
              Icons.book,
            ),
          ),
          BottomNavigationBarItem(
            label: "Movies & TV",
            icon: Icon(
              Icons.local_movies,
            ),
          ),
        ],
        currentIndex: utilController.bottomNavIndex.value,
        onTap: (i) {
          utilController.changeBottomNavIndex(i);
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        showUnselectedLabels: true,
        unselectedFontSize: 12,
        selectedFontSize: 13,
        backgroundColor: Colors.white,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
