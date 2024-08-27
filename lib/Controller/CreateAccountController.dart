import 'dart:math';
import 'dart:developer';
import 'package:bricksnmix/Screens/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final dio = Dio();
  RxBool loading = false.obs;
  RxBool loginResult = false.obs;

  Future<void> userSignup(pUsername, pEmail, pPassword) async {
    try {
      print("================= inside signup function ==================");
      loading(true);
      final response = await dio.post(
        'http://195.35.20.1:8080/auth/users/',
        data: {
          'username': pUsername,
          'email': pEmail,
          'password': pPassword,
        },
      );

      print("============================= Api completed =================");

      if (response.statusCode == 201) {
        print("============================= inside success =================");
        debugPrint('signup successfully completed');
        loginResult(true);
        Get.offAll(() => const Login());
      } else {
        print("============================= inside fail =================");
        debugPrint('signup failed');
        loginResult(false);
        Get.snackbar(
          'Error',
          'Signup failed',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print(e);
    } finally {
      loading(false);
    }
  }
}
