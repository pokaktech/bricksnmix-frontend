import 'package:bricksnmix/Screens/order_details_screen.dart';
import 'package:flutter/material.dart';

import '../../designs/ResponsiveInfo.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.orange,
      //
      //
      //   currentIndex: 0,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,), label: 'Home',),
      //     BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.grey,), label: 'Categories'),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.grey,), label: 'Orders'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,), label: 'Profile'),
      //   ],
      // ),
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // handle back button press
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       // handle search button press
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.filter_list),
        //     onPressed: () {
        //       // handle filter button press
        //     },
        //   ),
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                        0,
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                        0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                      child: TextField(
                        style: TextStyle(
                            fontSize:
                                ResponsiveInfo.isMobile(context) ? 14 : 17),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            size: ResponsiveInfo.isMobile(context) ? 17 : 22,
                            color: Colors.black26,
                          ),
                          border: InputBorder.none,
                          hintText: '\t Search..',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Align(
                        alignment: FractionalOffset.center,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          width: ResponsiveInfo.isMobile(context) ? 50 : 60,
                          height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                          padding: EdgeInsets.all(
                              ResponsiveInfo.isMobile(context) ? 5 : 10),
                          child: Image.asset(
                            "assets/homecategory/settings.png",
                            width: ResponsiveInfo.isMobile(context) ? 25 : 35,
                            height: ResponsiveInfo.isMobile(context) ? 25 : 35,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding:
                  EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 5 : 10),
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(
                          ResponsiveInfo.isMobile(context) ? 5 : 8),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 1.3,
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
                            ListTile(
                              leading: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                    Color(0xff03A3FC), BlendMode.srcIn),
                                child: Image.asset(
                                  "assets/icons/box.png",
                                  width: ResponsiveInfo.isMobile(context)
                                      ? 30
                                      : 40,
                                  height: ResponsiveInfo.isMobile(context)
                                      ? 30
                                      : 40,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.black38,
                                size:
                                    ResponsiveInfo.isMobile(context) ? 25 : 30,
                              ),
                              title: Text(
                                "Order Received",
                                style: TextStyle(
                                    fontSize: ResponsiveInfo.isMobile(context)
                                        ? 15
                                        : 17,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "11th April 2024",
                                style: TextStyle(
                                    fontSize: ResponsiveInfo.isMobile(context)
                                        ? 12
                                        : 14,
                                    color: Colors.black26),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                                  0,
                                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                                  0),
                              child: Container(
                                width: double.infinity,
                                height:
                                    ResponsiveInfo.isMobile(context) ? 0.7 : 1,
                                color: Colors.black26,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/homecategory/cementbag.png',
                                    width: ResponsiveInfo.isMobile(context)
                                        ? 100
                                        : 120,
                                    height: ResponsiveInfo.isMobile(context)
                                        ? 100
                                        : 120,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
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
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Quantity - 1 ",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize:
                                                ResponsiveInfo.isMobile(context)
                                                    ? 13
                                                    : 15,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Expected Delivery",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize:
                                                ResponsiveInfo.isMobile(context)
                                                    ? 13
                                                    : 15,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "11th April 2024",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize:
                                                ResponsiveInfo.isMobile(context)
                                                    ? 11
                                                    : 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black26),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                                  0,
                                  ResponsiveInfo.isMobile(context) ? 10 : 15,
                                  0),
                              child: Container(
                                width: double.infinity,
                                height:
                                    ResponsiveInfo.isMobile(context) ? 0.7 : 1,
                                color: Colors.black26,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  ResponsiveInfo.isMobile(context) ? 10 : 15),
                              child: Container(
                                width: ResponsiveInfo.isMobile(context)
                                    ? 150
                                    : 180,
                                height:
                                    ResponsiveInfo.isMobile(context) ? 34 : 45,
                                padding: EdgeInsets.all(
                                    ResponsiveInfo.isMobile(context) ? 3 : 5),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: Text(
                                  "Cancel",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: ResponsiveInfo.isMobile(context)
                                          ? 13
                                          : 15,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetailsScreen()));
                    },
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
