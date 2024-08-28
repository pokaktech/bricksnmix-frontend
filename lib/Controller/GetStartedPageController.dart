import 'package:bricksnmix/Screens/login.dart';
import 'package:get/get.dart';

class Getstartedpagecontroller extends GetxController {
  RxBool buttonLoading = false.obs;

  void onButtonPressed() async {
    buttonLoading(true);

    await Future.delayed(const Duration(seconds: 3), () {
      buttonLoading(false);
    });

    Get.offAll(() => const Login());
  }
}
