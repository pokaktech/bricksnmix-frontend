// import 'package:bricksnmix/Screens/Home.dart';
// import 'package:bricksnmix/generated/appColors.dart';
// import 'package:bricksnmix/services/auth_storage.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';

// class UserService {
//   final dio = Dio();
//   final String baseUrl = 'http://195.35.20.1:8080/';

//   Future<String> userSignIn(pUsername, pPassword, context) async {
//     try {
//       final response = await dio.post('$baseUrl/auth/jwt/create/', data: {
//         'username': pUsername,
//         'password': pPassword,
//       });

//       if (response.statusCode == 200) {

//         return response;
//         final String accessToken = response.data['access'];

//         return accessToken;

        
//       } else {
//         Get.snackbar(
//           'Error',
//           'Login failed',
//           backgroundColor: Appcolors.red,
//           colorText: Appcolors.white,
//         );
//       }
//     } on DioException catch (e) {
//       if (e.response?.statusCode == 401) {
//         Get.snackbar(
//           'Error',
//           'Login failed',
//           backgroundColor: Appcolors.red,
//           colorText: Appcolors.white,
//         );
//       }
//     } catch (e) {
//       Get.snackbar(
//         'Error',
//         'Login failed',
//         backgroundColor: Appcolors.red,
//         colorText: Appcolors.white,
//       );
//       print(e);
//     }
//   }
// }
