import 'package:get/get.dart';

class ChangePwdController extends GetxController {
  ChangePwdController();

  _initData() {
    update(["change_pwd"]);
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
