import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final Text title;
  final bool centerResult;

  const BaseAppBar({
    super.key,
    required this.appBar,
    required this.title,
    required this.centerResult,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
      ),
      centerTitle: centerResult,
      // You can also add other properties here if needed
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
