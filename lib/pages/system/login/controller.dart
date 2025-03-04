import 'package:get/get.dart';
import 'package:let_chat/common/routers/index.dart';

class LoginController extends GetxController {
  LoginController();

  _initData() {
    update(["login"]);
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

  Future<void> onSignIn() async {
    Get.toNamed(RouteNames.systemLogin);
  }
}
