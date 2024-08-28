import 'package:bricksnmix/Screens/login.dart';
import 'package:bricksnmix/Screens/sellers_homepage.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountType extends StatefulWidget {
  const AccountType({Key? key}) : super(key: key);

  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding:
                    EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 20 : 25),
                child: Center(
                  child: Image.asset(
                    'assets/welcom.png',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 1.7,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Appcolors.forestGreen,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        "assets/orangebg.png",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 35,
                      right: 25,
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        Text(
                          "\nGet\nStarted",
                          style: TextStyle(
                              fontSize:
                                  ResponsiveInfo.isMobile(context) ? 30 : 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Get Started as seller or \n a customer",
                          style: TextStyle(
                            fontSize:
                                ResponsiveInfo.isMobile(context) ? 14 : 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Get.offAll(() => const Login());
                          },
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Appcolors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Appcolors.forestGreen,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Center(
                          child: Text(
                            "BUILDNMIX",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
