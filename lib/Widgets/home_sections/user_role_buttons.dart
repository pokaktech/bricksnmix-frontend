import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';

class UserRoleButtons extends StatelessWidget {
  const UserRoleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: width * 0.08,
        ),
        InkWell(
          onTap: () {
            print("button pressed");
          },
          child: Container(
            height: height * 0.055,
            width: width * 0.40,
            decoration: BoxDecoration(
              color: Appcolors.pureWhite,
              border: Border.all(color: Appcolors.forestGreen),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Be a Seller",
                style: TextStyle(
                  fontSize: 16,
                  color: Appcolors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.03,
        ),
        InkWell(
          onTap: () {
            print("button pressed");
          },
          child: Container(
            height: height * 0.055,
            width: width * 0.40,
            decoration: BoxDecoration(
              color: Appcolors.pureWhite,
              border: Border.all(color: Appcolors.forestGreen),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Be a Customer",
                style: TextStyle(
                  fontSize: 16,
                  color: Appcolors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
