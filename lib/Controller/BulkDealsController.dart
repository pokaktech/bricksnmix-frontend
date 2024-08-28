import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bulkdealscontroller extends GetxController {
  final ScrollController scrollController = ScrollController();

  void scrollToRight() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
