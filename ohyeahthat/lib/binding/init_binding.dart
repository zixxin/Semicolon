import 'package:get/get.dart';
import 'package:ohyeahthat/controller/home_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}