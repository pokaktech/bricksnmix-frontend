import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  RxBool obscure = false.obs;
}
