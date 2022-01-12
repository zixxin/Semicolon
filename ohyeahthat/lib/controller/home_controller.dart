import 'package:get/get.dart';

class HomeController extends GetxService{
  static HomeController get to => Get.find();

  RxInt currentIndex = 0.obs;

  void changePageIndex(int index){
    currentIndex(index);
  }
}