import 'package:flutter/material.dart';

import '../constants.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({
    Key? key,
    required this.title,
    IconData? this.icon,
  }) : super(key: key);
  final String title;
  var icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(icon)
        ],
      ),
    );
  }
}
