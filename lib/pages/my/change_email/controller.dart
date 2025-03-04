import 'package:get/get.dart';

class ChangeEmailController extends GetxController {
  ChangeEmailController();

  _initData() {
    update(["change_email"]);
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
