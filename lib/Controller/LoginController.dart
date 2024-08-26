import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final dio = Dio();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool obscure = false.obs;

  Future<void> userSignIn(pUsername, pPassword) async {
    try {
      final response = await dio.post(
        'http://195.35.20.1:8080/',
        data: {'username': pUsername, 'password': pPassword},
      );
      print(response.data);
    } catch (e) {
      print(e);
    }
  }
}
