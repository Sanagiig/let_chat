import 'package:get/get.dart';
import 'package:let_chat/common/services/im/im.dart';
import 'package:let_chat/common/services/system/index.dart';

class Global {
  static Future<void> init() async {
    Get.put<ConfigService>(ConfigService());
    Get.put<UserService>(UserService());
    Get.put<IMService>(IMService());
    Get.put<NoticeService>(NoticeService());
    Get.put<HttpService>(HttpService());
  }
}
