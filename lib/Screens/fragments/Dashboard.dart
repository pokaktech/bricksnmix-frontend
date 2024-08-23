import 'package:bricksnmix/Custom_Widget/Custom_ContainerWidget.dart';
import 'package:bricksnmix/Widgets/CategoryWidget.dart';
import 'package:bricksnmix/Screens/Slidbarscreen.dart';
import 'package:bricksnmix/Widgets/Appbar_widget.dart';
import 'package:bricksnmix/Widgets/fasting_moving_items.dart';
import 'package:bricksnmix/Widgets/todays_special_offer.dart';
import 'package:bricksnmix/Widgets/todaysbulkdetails.dart';
import 'package:bricksnmix/Widgets/trendingbrands.dart';
import 'package:bricksnmix/Widgets/trendingproducts.dart';
import 'package:flutter/material.dart';

import '../../designs/ResponsiveInfo.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: AppbarWidgett(),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Slidbar(),
                  SizedBox(
                    height: ResponsiveInfo.isMobile(context) ? 20 : 25,
                  ),
                  CategoryWidget(),
                  Trendingbrands(),
                  Trendingproducts(),
                  Todaysbulkdetails(),
                  Image.asset(
                    "assets/homecategory/hirenow.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.75,
                  ),
                  TodaysSpecialOffer(),
                  Image.asset(
                    "assets/homecategory/rewardpoints.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.75,
                  ),
                  FastingMovingItems(),
                  Image.asset(
                    "assets/homecategory/lastposter.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.75,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
