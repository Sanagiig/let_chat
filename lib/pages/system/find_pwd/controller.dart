import 'package:get/get.dart';

class FindPwdController extends GetxController {
  FindPwdController();

  _initData() {
    update(["find_pwd"]);
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
