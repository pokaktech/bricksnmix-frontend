import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:bricksnmix/generated/assets.dart';
import 'package:flutter/material.dart';

class NearestSuppliers extends StatelessWidget {
  const NearestSuppliers({super.key});

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.width / 2.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            const Text(
              "Nearest Suppliers",
              maxLines: 1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            MediaQuery.removePadding(
              context: context,
              removeBottom: false,
              removeLeft: false,
              removeRight: false,
              removeTop: false,
              child: SizedBox(
                width: double.infinity,
                height: ResponsiveInfo.isMobile(context) ? 100 : 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (i) => SizedBox(
                      width: 90,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: ResponsiveInfo.isMobile(context) ? 50 : 70,
                            height: ResponsiveInfo.isMobile(context) ? 50 : 70,
                            child: Center(
                              child: Image.asset(
                                Assets.nearestSuppliersTestImg,
                                width:
                                    ResponsiveInfo.isMobile(context) ? 50 : 60,
                                height:
                                    ResponsiveInfo.isMobile(context) ? 50 : 60,
                              ),
                            ),
                          ),
                          Text(
                            "A&J Goods",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize:
                                  ResponsiveInfo.isMobile(context) ? 10 : 13,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
