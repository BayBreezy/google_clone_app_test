import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Container(
        height: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: kPrimaryColor,
          border: Border.all(width: 1, color: Colors.grey.withAlpha(40)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                "https://s3.gaming-cdn.com/images/products/9071/orig/fifa-22-pc-game-origin-cover.jpg",
                fit: BoxFit.cover,
                height: 280,
                width: context.width - kPadding * 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kPadding, vertical: kPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fifa 22 - Ends on 2/2/22",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 10),
                  const Text("\$5 play discount"),
                  const SizedBox(height: 9),
                  const Text(
                    "Terms apply",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      child: const Text("See offer"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
