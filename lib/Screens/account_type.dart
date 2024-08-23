import 'package:bricksnmix/Screens/login.dart';
import 'package:bricksnmix/Screens/sellers_homepage.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

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
            child: Container(
              child: Stack(
                children: [
                  Align(
                    alignment: FractionalOffset.topCenter,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        "assets/orangebg.png",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              ResponsiveInfo.isMobile(context) ? 20 : 25,
                              0,
                              0,
                              ResponsiveInfo.isMobile(context) ? 5 : 10),
                          child: Text(
                            "\nGet\nStarted",
                            style: TextStyle(
                                fontSize:
                                    ResponsiveInfo.isMobile(context) ? 30 : 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              ResponsiveInfo.isMobile(context) ? 20 : 25,
                              0,
                              0,
                              ResponsiveInfo.isMobile(context) ? 5 : 10),
                          child: Text(
                            "Get Started as seller or \n a customer",
                            style: TextStyle(
                                fontSize:
                                    ResponsiveInfo.isMobile(context) ? 14 : 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              ResponsiveInfo.isMobile(context) ? 20 : 25),
                          child: Container(
                            width: double.infinity,
                            height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color(0xffcdcdca), // background
                                foregroundColor: Colors.white, // foreground
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SellersHomepage()));
                              },
                              child: Text(
                                'Be a seller',
                                style: TextStyle(color: Color(0xffff6624)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              ResponsiveInfo.isMobile(context) ? 20 : 25),
                          child: Container(
                            width: double.infinity,
                            height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color(0xffcdcdca), // background
                                foregroundColor: Colors.white, // foreground
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: const Text(
                                'Be a customer',
                                style: TextStyle(color: Color(0xffff6624)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
