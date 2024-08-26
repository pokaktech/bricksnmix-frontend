import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  CustomTextFormfield({
    super.key,
    required this.labelText,
    required this.controller,
    required this.ontap,
    required this.isobscure,
  });
  TextEditingController controller = TextEditingController();
  final String labelText;
  final Function() ontap;
  final bool isobscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromARGB(255, 235, 234, 234),
            border: Border.all(
              color: Color.fromARGB(255, 246, 231, 231),
            )),
        child: TextFormField(
          obscureText: isobscure,
          controller: controller,
          
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10, top: 10),
            border: InputBorder.none,
            hintText: labelText,
            hintStyle: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
