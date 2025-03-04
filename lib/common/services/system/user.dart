import 'package:get/get.dart';
import 'package:let_chat/common/api/index.dart';
import 'package:let_chat/common/models/index.dart';
import 'package:let_chat/common/routers/index.dart';
import 'package:let_chat/common/utils/index.dart';
import 'package:let_chat/common/values/index.dart';

class UserService extends GetxService {
  static UserService get to => Get.find();

  String _token = '';
  String get token => _token;

  bool get hasToken => _token.isNotEmpty;

  final _isLogin = false.obs;
  bool get isLogin => _isLogin.value;

  final String _username = '';
  String get username => _username;

  final String _imSign = '';
  String get imSign => _imSign;

  final _profile = UserProfileModel().obs;

  Future<void> setToken(String token) async {
    _token = token;
    _isLogin.value = true;

    if (token.isEmpty) {
      _isLogin.value = false;
    }
    await Storage().setString(Constants.storageToken, token);
  }

  Future<void> getProfile() async {
    UserProfileModel profile = await UserApi.profile();
    _profile(profile);
    _isLogin.value = true;

    await Storage().setJson(Constants.storageProfile, profile);
  }

  Future<void> setProfile(UserProfileModel profile) async {
    if (_token.isEmpty) return;

    _profile(profile);
    _isLogin.value = true;

    await Storage().setJson(Constants.storageProfile, profile);
  }

  Future<bool> checkIsLogin() async {
    if (isLogin) {
      return true;
    }

    await Get.toNamed(RouteNames.systemLogin);
    return false;
  }

  /// 注销
  Future<void> logout() async {
    // if (_isLogin.value) await UserAPIs.logout();
    await Storage().remove(Constants.storageToken);
    _profile(UserProfileModel());
    _isLogin.value = false;
    _token = '';
  }

    /// 销毁
  Future<void> destory() async {
    if (_isLogin.value) await UserApi.destory();
    await Storage().remove(Constants.storageToken);
    _profile(UserProfileModel());
    _isLogin.value = false;
    _token = '';
  }
}
