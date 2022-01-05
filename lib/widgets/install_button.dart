import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class InstallButton extends StatelessWidget {
  const InstallButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
            elevation: 0,
          ),
          onPressed: () {
            Get.snackbar(
              "Installing App",
              "Mario Bros is being installed now...",
              borderRadius: 5,
            );
          },
          child: Text("Install")),
    );
  }
}
