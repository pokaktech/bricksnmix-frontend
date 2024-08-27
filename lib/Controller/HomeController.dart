import 'package:bricksnmix/domain/trendingBrandModel.dart';
import 'package:bricksnmix/services/auth_storage.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final dio = Dio();
  RxBool loading = false.obs;
  RxBool loginResult = false.obs;
  List<TrendingBrandModel> trendingBrand = [];

  @override
  void onInit() {
    getTrendingBrands();
    super.onInit();
  }

  Future<void> getTrendingBrands() async {
    final token = await getToken();

    if (token == null) {
      print('No token found');
      return;
    }

    try {
      loading(true);

      final options = Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      final response = await dio.get(
        'http://195.35.20.1:8080/accounts/getTrendingBrands/',
        options: options,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;

        List<dynamic> trendingBrandsJson = jsonData["Data"];

        if (jsonData["Status"] == "1") {
          trendingBrandsJson = jsonData["Data"];

          List<TrendingBrandModel> trendingBrands = trendingBrandsJson
              .map((json) => TrendingBrandModel.fromJson(json))
              .toList();
        } else {
          print('Error: ${jsonData["message"]}');
        }
      }
    } catch (e) {
      print('Unexpected error: $e');
    } finally {
      loading(false);
    }
  }
}
