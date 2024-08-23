import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  var cartCount = 1.obs;

  void increaseCount() {
    cartCount++;
  }

  void decreaseCount() {
    cartCount > 1 ? cartCount-- : null;
  }
}
