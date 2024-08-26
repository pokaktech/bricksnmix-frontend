import 'dart:math';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final dio = Dio();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> userSignup(pUsername, pEmail, pPassword) async {
    try {
      final response = await dio.post(
        'http://195.35.20.1:8080/auth/users/',
        data: {
          'username': pUsername,
          'email': pEmail,
          'password': pPassword,
        },
      );

      
      if (response.statusCode == 201) {
        debugPrint('signup successfully completed');
      } else {
        debugPrint('signup failed');
      }
    } catch (e) {
      print(e);
    }
  }
}
