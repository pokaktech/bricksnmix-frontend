import 'package:bricksnmix/Controller/HomeController.dart';
import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/fragments/Dashboard.dart';
import 'package:bricksnmix/Screens/fragments/categories.dart';
import 'package:bricksnmix/Screens/fragments/orders.dart';
import 'package:bricksnmix/Screens/fragments/profile.dart';

import 'package:bricksnmix/Screens/splash.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _Widgetoptions = <Widget>[
    const Dashboard(),
    const CategoriesScreen(),
    const Orders(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: _Widgetoptions.elementAt(_selectedIndex),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              height: ResponsiveInfo.isMobile(context) ? 60 : 75,
              child: BottomNavigationBar(
                unselectedItemColor: Colors.black26,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        (_selectedIndex == 0)
                            ? const Color(0xffff6624)
                            : Colors.black26,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        "assets/icons/home.png",
                        width: ResponsiveInfo.isMobile(context) ? 30 : 40,
                        height: ResponsiveInfo.isMobile(context) ? 30 : 40,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        (_selectedIndex == 1)
                            ? const Color(0xffff6624)
                            : Colors.black26,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        "assets/icons/category.png",
                        width: ResponsiveInfo.isMobile(context) ? 30 : 40,
                        height: ResponsiveInfo.isMobile(context) ? 30 : 40,
                      ),
                    ),
                    label: 'Categories',
                  ),
                  BottomNavigationBarItem(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        (_selectedIndex == 2)
                            ? const Color(0xffff6624)
                            : Colors.black26,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        "assets/icons/box.png",
                        width: ResponsiveInfo.isMobile(context) ? 30 : 40,
                        height: ResponsiveInfo.isMobile(context) ? 30 : 40,
                      ),
                    ),
                    label: 'Orders',
                  ),
                  BottomNavigationBarItem(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        (_selectedIndex == 3)
                            ? const Color(0xffff6624)
                            : Colors.black26,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        "assets/icons/profile.png",
                        width: ResponsiveInfo.isMobile(context) ? 30 : 40,
                        height: ResponsiveInfo.isMobile(context) ? 30 : 40,
                      ),
                    ),
                    label: 'Profile',
                  )
                ],
                selectedLabelStyle:
                    const TextStyle(decoration: TextDecoration.none),
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                selectedItemColor: const Color(0xffff6624),
                iconSize: ResponsiveInfo.isMobile(context) ? 30 : 40,
                backgroundColor: Colors.white,
                onTap: _onItemTapped,
                elevation: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
