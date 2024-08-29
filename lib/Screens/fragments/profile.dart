import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/edit_profile.dart';
import 'package:bricksnmix/Widgets/Base_App_Bar.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:bricksnmix/services/auth_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      appBar: BaseAppBar(
        appBar: AppBar(),
        title: const Text("Profile"),
        centerResult: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Appcolors.headerLineColor,
            height: 1,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(
              ResponsiveInfo.isMobile(context) ? 15 : 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Hey!",
                    style: TextStyle(
                      color: Appcolors.black,
                      fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nAdam johns',
                        style: TextStyle(
                          color: Appcolors.red,
                          fontSize: ResponsiveInfo.isMobile(context) ? 20 : 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    ResponsiveInfo.isMobile(context) ? 10 : 15,
                    0,
                    0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(
                            ResponsiveInfo.isMobile(context) ? 5 : 8,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Appcolors.black,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.transparent,
                            ),
                            width: double.infinity,
                            height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Appcolors.forestGreen,
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
                                      fontSize: ResponsiveInfo.isMobile(context)
                                          ? 14
                                          : 17,
                                      color: Appcolors.forestGreen,
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
                            height: ResponsiveInfo.isMobile(context) ? 50 : 60,
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
                                      fontSize: ResponsiveInfo.isMobile(context)
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              ResponsiveInfo.isMobile(context) ? 15 : 20,
            ),
            child: Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                          fontSize: ResponsiveInfo.isMobile(context) ? 17 : 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    itemCount: arrmenus.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: ListTile(
                          leading: Image.asset(
                            arricons[index],
                            width: ResponsiveInfo.isMobile(context) ? 25 : 30,
                            height: ResponsiveInfo.isMobile(context) ? 25 : 30,
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
                        onTap: () async {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          } else if (index == 4) {
                            await deleteToken();

                            Get.offAll(() => const CreateAccount());
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
