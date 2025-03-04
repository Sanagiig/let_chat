import 'dart:ui';

import 'package:get/get.dart';
import 'package:let_chat/common/utils/index.dart';
import 'package:let_chat/common/values/index.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ConfigService extends GetxService {
  static ConfigService get to => Get.find();

  PackageInfo? _packageInfo;

  Locale get locale => PlatformDispatcher.instance.locale;

  // 是否首次打开
  bool get isAlreadyOpen => Storage().getBool(Constants.storageAlreadyOpen);

  @override
  void onReady() {
    super.onReady();
    init();
  }

  Future<void> init() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }
}
