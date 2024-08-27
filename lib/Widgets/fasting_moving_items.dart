import 'package:bricksnmix/Screens/product_details_page.dart';
import 'package:flutter/material.dart';

import '../designs/ResponsiveInfo.dart';

class FastingMovingItems extends StatelessWidget {
  const FastingMovingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.52,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 8 : 12),
            child: Text(
              "Fast Moving Items",
              maxLines: 1,
              style: TextStyle(
                fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(
                            ResponsiveInfo.isMobile(context) ? 5 : 10),
                        child: Container(
                          width: ResponsiveInfo.isMobile(context) ? 150 : 180,
                          height: ResponsiveInfo.isMobile(context) ? 185 : 215,
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
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
                                          height: 22,
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
                                          child: const Center(
                                            child: Text(
                                              "-11%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            // flex: 1,
                                            // color: Colors.black,
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
                                          Container(
                                            color: Colors.black,
                                            // flex: 1,
                                            child: Icon(
                                              Icons.add_box_rounded,
                                              color: Colors.green,
                                              size: ResponsiveInfo.isMobile(
                                                      context)
                                                  ? 18
                                                  : 23,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
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
                  );
                }),
          ),
        ],
      ),
    );
  }
}
