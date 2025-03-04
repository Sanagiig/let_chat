import 'package:get/get.dart';
import 'package:let_chat/common/services/index.dart';

class MainController extends GetxController {
  MainController();

  _initData() async {
    await UserService.to.getProfile();
    update(["main"]);
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
