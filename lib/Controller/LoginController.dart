import 'package:bricksnmix/Screens/Home.dart';
import 'package:bricksnmix/Widgets/unauthorized_dialog.dart';
import 'package:bricksnmix/services/auth_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final dio = Dio();

  RxBool obscure = false.obs;
  RxBool loginResult = false.obs;
  var errorMessage = ''.obs;

  Future<void> userSignIn(pUsername, pPassword, context) async {
    try {
      errorMessage = ''.obs;
      final response = await dio.post(
        'http://195.35.20.1:8080/auth/jwt/create/',
        data: {
          'username': pUsername,
          'password': pPassword,
        },
      );

      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
        await Future.delayed(Duration(seconds: 5));
        print(response.data);
        // storeToken()
        loginResult(true);
        Get.offAll(() => HomeScreen());
      } else {
        loginResult(false);
        errorMessage.value = 'Login failed. Please try again.';
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
        await Future.delayed(Duration(seconds: 5));
        Get.back();
        showUnauthorizedDialog(context);
      }
    } catch (e) {
      loginResult(false);
      errorMessage.value = 'An Error Occured';
      print(e);
    }
  }
}
