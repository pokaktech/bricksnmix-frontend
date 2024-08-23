import 'package:flutter/material.dart';

class Googlecustomwidgett extends StatelessWidget {
  final Widget Image;
  Googlecustomwidgett({super.key, required this.Image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color.fromARGB(255, 237, 231, 231),
          border: Border.all(
            color: Color.fromARGB(255, 246, 231, 231),
          ),
        ),
        child: Image,

        // child: TextFormField(

        //   decoration: InputDecoration(

        //       contentPadding: EdgeInsets.only(left: 10, top: 10),

        //       border: InputBorder.none,

        //       hintStyle: TextStyle(fontSize: 13),

        //       ),
        // ),
      ),
    );
  }
}
