import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsScreenshot extends StatelessWidget {
  const DetailsScreenshot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemBuilder: (ctx, i) {
          return Padding(
            padding: EdgeInsets.only(left: kPadding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "http://www.smashbros.com/assets_v2/img/sns/en.png?180309",
                width: 250,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
