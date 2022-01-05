import 'package:flutter/material.dart';

import '../constants.dart';

class DetailStats extends StatelessWidget {
  const DetailStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "4.4",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                  )
                ],
              ),
              Text(
                "123K Reviews",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "500K",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.add,
                    size: 13,
                  )
                ],
              ),
              Text(
                "Downloads",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.group_add,
                    size: 20,
                  )
                ],
              ),
              Text(
                "Everyone 10+",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
