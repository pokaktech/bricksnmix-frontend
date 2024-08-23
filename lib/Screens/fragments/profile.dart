import 'package:bricksnmix/Screens/edit_profile.dart';
import 'package:flutter/material.dart';

import '../../designs/ResponsiveInfo.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> arricons = [
    'assets/icons/editprofile.png',
    'assets/icons/faq.png',
    'assets/icons/clanguage.png',
    'assets/icons/settings.png',
    'assets/icons/logout.png'
  ];

  List<String> arrmenus = [
    'Edit Profile',
    'FAQ & Questions',
    'Language',
    'Settings',
    'Logout'
  ];

  @override
  void initState() {
    super.initState();
  }

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
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // handle back button press
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(
                ResponsiveInfo.isMobile(context) ? 15 : 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Hey ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\nAdam johns',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize:
                                  ResponsiveInfo.isMobile(context) ? 17 : 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, ResponsiveInfo.isMobile(context) ? 10 : 15, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(
                                ResponsiveInfo.isMobile(context) ? 5 : 8),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.redAccent,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Colors.transparent,
                              ),
                              width: double.infinity,
                              height:
                                  ResponsiveInfo.isMobile(context) ? 50 : 60,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.redAccent,
                                      size: ResponsiveInfo.isMobile(context)
                                          ? 18
                                          : 24,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Wishlist",
                                      style: TextStyle(
                                        fontSize:
                                            ResponsiveInfo.isMobile(context)
                                                ? 14
                                                : 17,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(
                                ResponsiveInfo.isMobile(context) ? 5 : 8),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Colors.transparent,
                              ),
                              width: double.infinity,
                              height:
                                  ResponsiveInfo.isMobile(context) ? 50 : 60,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.help_sharp,
                                      color: Colors.blueAccent,
                                      size: ResponsiveInfo.isMobile(context)
                                          ? 18
                                          : 24,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Help Desk",
                                      style: TextStyle(
                                        fontSize:
                                            ResponsiveInfo.isMobile(context)
                                                ? 14
                                                : 17,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 5 : 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Settings",
                    style: TextStyle(
                        fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    itemCount: arrmenus.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(
                              ResponsiveInfo.isMobile(context) ? 5 : 8),
                          child: ListTile(
                            leading: Image.asset(
                              arricons[index],
                              width: ResponsiveInfo.isMobile(context) ? 25 : 30,
                              height:
                                  ResponsiveInfo.isMobile(context) ? 25 : 30,
                            ),
                            title: Text(
                              arrmenus[index],
                              style: TextStyle(
                                fontSize:
                                    ResponsiveInfo.isMobile(context) ? 15 : 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          }
                        },
                      );
                    },
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
