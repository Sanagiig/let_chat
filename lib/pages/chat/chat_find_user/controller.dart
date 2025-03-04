import 'package:get/get.dart';

class ChatFindUserController extends GetxController {
  ChatFindUserController();

  _initData() {
    update(["chat_find_user"]);
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
