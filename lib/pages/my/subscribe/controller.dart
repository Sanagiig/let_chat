import 'package:get/get.dart';

class SubscribeController extends GetxController {
  SubscribeController();

  _initData() {
    update(["subscribe"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
