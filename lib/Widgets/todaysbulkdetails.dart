import 'package:bricksnmix/Controller/BulkDealsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screens/product_details_page.dart';
import '../designs/ResponsiveInfo.dart';

class Todaysbulkdetails extends StatelessWidget {
  Todaysbulkdetails({super.key});
  List<String> datas = ['bulk1.png', 'bulk1.png'];

  @override
  Widget build(BuildContext context) {
    Bulkdealscontroller bulkdealscontroller = Get.put(Bulkdealscontroller());
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.width / 2.3,
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
                  "Today’s Bulk Deals",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  bulkdealscontroller.scrollToRight();
                },
                child: Padding(
                  padding:
                      EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 8 : 12),
                  child: Image.asset(
                    'assets/homecategory/blackarrow.png',
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
              height: ResponsiveInfo.isMobile(context) ? 100 : 110,
              child: GestureDetector(
                child: ListView(
                  controller: bulkdealscontroller.scrollController,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.fromLTRB(
                    ResponsiveInfo.isMobile(context) ? 10 : 15,
                    0,
                    ResponsiveInfo.isMobile(context) ? 10 : 15,
                    0,
                  ),
                  children: List.generate(
                    datas.length,
                    (i) => Padding(
                      padding: EdgeInsets.fromLTRB(
                        ResponsiveInfo.isMobile(context) ? 5 : 10,
                        0,
                        ResponsiveInfo.isMobile(context) ? 5 : 10,
                        0,
                      ),
                      child: Image.asset(
                        'assets/homecategory/${datas[i]}',
                        width: ResponsiveInfo.isMobile(context) ? 237 : 250,
                        height: ResponsiveInfo.isMobile(context) ? 98 : 105,
                        fit: BoxFit.fill,
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
        ],
      ),
    );
  }
}
