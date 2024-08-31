import 'package:bricksnmix/Controller/TodaysSpecialOfferController.dart';
import 'package:bricksnmix/Screens/product_details_page.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodaysSpecialOfferSection extends StatelessWidget {
  const TodaysSpecialOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    Todaysspecialoffercontroller todaysspecialoffercontroller =
        Get.put(Todaysspecialoffercontroller());
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width / 1.45,
      color: const Color(0xffFFCF86),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 8 : 12),
                child: Text(
                  "Today’s Special Offer",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffB6545A),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  todaysspecialoffercontroller.scrollToRight();
                },
                child: Padding(
                  padding:
                      EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 8 : 12),
                  child: Image.asset(
                    'assets/homecategory/redarrow.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          MediaQuery.removePadding(
            context: context,
            removeBottom: false,
            removeLeft: false,
            removeRight: false,
            removeTop: false,
            child: SizedBox(
              width: double.infinity,
              height: ResponsiveInfo.isMobile(context) ? 200 : 220,
              child: ListView(
                controller: todaysspecialoffercontroller.scrollController,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(
                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                  0,
                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                  0,
                ),
                children: List.generate(
                  5,
                  (i) => GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        ResponsiveInfo.isMobile(context) ? 5 : 10,
                        0,
                        ResponsiveInfo.isMobile(context) ? 5 : 10,
                        0,
                      ),
                      child: SizedBox(
                        width: ResponsiveInfo.isMobile(context) ? 140 : 173,
                        height: ResponsiveInfo.isMobile(context) ? 165 : 195,
                        child: Card(
                          color: Colors.white,
                          elevation: ResponsiveInfo.isMobile(context) ? 5 : 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: FractionalOffset.center,
                                      child: Image.asset(
                                        'assets/homecategory/accblock.png',
                                        width: ResponsiveInfo.isMobile(context)
                                            ? 100
                                            : 120,
                                        height: ResponsiveInfo.isMobile(context)
                                            ? 100
                                            : 120,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Align(
                                      alignment: FractionalOffset.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                          ResponsiveInfo.isMobile(context)
                                              ? 5
                                              : 8,
                                        ),
                                        child: Container(
                                          width:
                                              ResponsiveInfo.isMobile(context)
                                                  ? 40
                                                  : 50,
                                          padding: EdgeInsets.all(
                                            ResponsiveInfo.isMobile(context)
                                                ? 3
                                                : 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            border: Border.all(
                                              color: Colors.red,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: Text(
                                            "-11%",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: ResponsiveInfo.isMobile(
                                                      context)
                                                  ? 7
                                                  : 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    ResponsiveInfo.isMobile(context) ? 5 : 8,
                                    0,
                                    0,
                                    0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "AAC Blocks",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveInfo.isMobile(context)
                                                  ? 13
                                                  : 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "200 x 100 x 150",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize:
                                              ResponsiveInfo.isMobile(context)
                                                  ? 11
                                                  : 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black26,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "\$ 1.50",
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize:
                                                    ResponsiveInfo.isMobile(
                                                            context)
                                                        ? 13
                                                        : 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons.add_box_rounded,
                                              color: Colors.green,
                                              size: ResponsiveInfo.isMobile(
                                                      context)
                                                  ? 18
                                                  : 23,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
