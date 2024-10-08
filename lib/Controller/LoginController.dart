import 'package:bricksnmix/Screens/Home.dart';
import 'package:bricksnmix/services/auth_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final dio = Dio();
  // final UserService _userService = UserService();

  RxBool obscure = false.obs;
  RxBool loginResult = false.obs;
  var errorMessage = ''.obs;
  RxBool loading = false.obs;

  Future<void> userSignIn(pUsername, pPassword, context) async {
    try {
      print("---------getted--------");
      loading(true);
      final response = await dio.post(
        'http://195.35.20.1:8080/auth/jwt/create/',
        data: {
          'username': pUsername,
          'password': pPassword,
        },
      );
      
      print("------- response---------");

      if (response.statusCode == 200) {
        final String accessToken = response.data['access'];

        await storeToken(accessToken);

        loginResult(true);
        Get.offAll(() => const HomeScreen());
      } else {
        loginResult(false);
        Get.snackbar(
          'Error',
          'Login failed',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );

        errorMessage.value = 'Login failed. Please try again.';
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        loginResult(false);
        Get.snackbar(
          'Error',
          'Login failed',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      loginResult(false);
      Get.snackbar(
        'Error',
        'Login failed',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      errorMessage.value = 'An Error Occured';
      print(e);
    } finally {
      loading(false);
    }
  }


  // void postUser(pUsername, pPassword, context) async {
  //   loading(true);

  //   final result = await _userService.userSignIn(pUsername, pPassword, context);

  //   if (result != null) {
  //     final String accessToken = result;
  //     await storeToken(accessToken);

  //       Get.offAll(() => const HomeScreen());
  //   }
  // }
}
