import 'package:bricksnmix/Controller/HomeController.dart';
import 'package:bricksnmix/Widgets/Appbar_widget.dart';
import 'package:bricksnmix/Widgets/home_sections/category_section.dart';
import 'package:bricksnmix/Widgets/home_sections/fast_moving_items_section.dart';
import 'package:bricksnmix/Widgets/home_sections/nearest_suppliers.dart';
import 'package:bricksnmix/Widgets/home_sections/slideBar_section.dart';
import 'package:bricksnmix/Widgets/home_sections/todays_bulk_details_sections.dart';
import 'package:bricksnmix/Widgets/home_sections/todays_special_offer_section.dart';
import 'package:bricksnmix/Widgets/home_sections/trending_brand_section.dart';
import 'package:bricksnmix/Widgets/home_sections/trending_products_sections.dart';
import 'package:bricksnmix/Widgets/home_sections/user_role_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
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
    HomeController homeController = Get.put(HomeController());
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Expanded(
            flex: 1,
            child: AppbarWidgett(),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const UserRoleButtons(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const NearestSuppliers(),
                  GetBuilder(
                    init: HomeController(),
                    builder: (controller) {
                      return Obx(
                        () => controller.loading.isTrue
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: Color.fromARGB(229, 1, 49, 131),
                                ),
                              )
                            : const SlidebarSection(),
                      );
                    },
                  ),
                  SizedBox(
                    height: ResponsiveInfo.isMobile(context) ? 20 : 25,
                  ),
                  CategorySection(),
                  GetBuilder(
                    init: HomeController(),
                    builder: (controller) {
                      return Obx(
                        () => controller.loading.isTrue
                            ? Center(
                                child: LoadingAnimationWidget.staggeredDotsWave(
                                  color: const Color.fromARGB(229, 1, 49, 131),
                                  size: 35,
                                ),
                              )
                            : const TrendingBrandSection(),
                      );
                    },
                  ),
                  const TrendingProductsSections(),
                  TodaysBulkDetailsSections(),
                  Image.asset(
                    "assets/homecategory/hirenow.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.75,
                  ),
                  const TodaysSpecialOfferSection(),
                  Image.asset(
                    "assets/homecategory/rewardpoints.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.75,
                  ),
                  const FastingMovingItemsSection(),
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
