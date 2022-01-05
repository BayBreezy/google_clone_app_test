import 'package:Lists/controllers/utility_controller.dart';
import 'package:Lists/widgets/bottom_nav.dart';
import 'package:Lists/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../widgets/section.dart';
import '../widgets/card_items.dart';
import '../widgets/offer_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var utilController = Get.put(UtilitiesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(utilController),
      bottomNavigationBar: CustomBottomNav(utilController: utilController),
      body: Container(
        width: context.width,
        height: context.height,
        child: ListView(
          children: [
            SectionHeading(
              title: 'Discover recommended games',
              icon: Icons.arrow_forward,
            ),
            CardItemsHorizontal(),
            SectionHeading(title: 'Suggested for you', icon: null),
            CardItemsHorizontal(),
            SectionHeading(
              title: 'Strategy games',
              icon: Icons.arrow_forward,
            ),
            CardItemsHorizontal(),
            SectionHeading(
              title: 'Top offer for you',
              icon: Icons.arrow_forward,
            ),
            OfferCard(),
            SectionHeading(
              title: 'Casual games',
              icon: Icons.arrow_forward,
            ),
            CardItemsHorizontal(),
          ],
        ),
      ),
    );
  }
}
