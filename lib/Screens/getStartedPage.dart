import 'package:bricksnmix/generated/appColors.dart';
import 'package:bricksnmix/generated/assets.dart';
import 'package:flutter/material.dart';

class Getstartedpage extends StatelessWidget {
  const Getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Appcolors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 85,
              ),
              SizedBox(
                height: 300,
                width: 350,
                child: Image.asset(
                  Assets.getStartedImage,
                  width: 30,
                  height: 30,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Appcolors.forestGreen,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(250),
                    ),
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.only(
                      top: 10,
                      left: 35,
                      right: 25,
                      bottom: 10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Appcolors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Started",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Appcolors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get started as a seller or ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Appcolors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "a Customer",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Appcolors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
