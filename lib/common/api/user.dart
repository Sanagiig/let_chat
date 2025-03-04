import 'package:let_chat/common/models/index.dart';
import 'package:let_chat/common/services/index.dart';
import 'package:let_chat/common/utils/index.dart';


/// 用户 api
class UserApi {
  /// 注册
  static Future<bool> register(UserRegisterReq req) async {
    var res = await HttpService.to.post(
      '/users/register',
      data: req.toJson(),
    );

    if (res.statusCode == 200) {
      return true;
    }
    return false;
  }

  /// 登录
  static Future<UserTokenModel> login(UserLoginReq req) async {
    var res = await HttpService.to.post(
      '/users/login',
      data: req.toJson(),
    );
    return UserTokenModel.fromJson(res.data);
  }

  /// Profile
  static Future<UserProfileModel> profile() async {
    var res = await HttpService.to.get(
      '/users/me',
    );
    return UserProfileModel.fromJson(res.data);
  }

  /// 发送验证邮件
  static Future<UserProfileModel> sendEmailVerify(
      String email, String type) async {
    var res = await HttpService.to.post(
      '/users/verify',
      data: {
        'email': email,
        'type': type,
      },
    );
    return UserProfileModel.fromJson(res.data);
  }

  /// 找回密码
  static Future<void> findPassword(UserRegisterReq req) async {
    await HttpService.to.post(
      '/users/findpwd',
      data: {
        'email': req.email,
        'verify_code': req.verifyCode,
        'password': req.password,
      },
    );
  }

  /// 加密
  static Future<String> encrypt(String password) async {
    password = await EncryptUtil().sha(password);
    var res = await HttpService.to.post(
      '/users/encrypt',
      data: {
        'password': password,
      },
    );

    return res.data["hash"] as String;
  }

  /// 修改邮件
  static Future<void> changeEmail(
    String email,
  ) async {
    await HttpService.to.put(
      '/users/me',
      data: {
        'email': email,
      },
    );
  }

  /// 修改密码
  static Future<void> changePassword(
      String oldPassword, String reEnterPassword) async {
    await HttpService.to.put(
      '/users/me',
      data: {
        'old_password': oldPassword,
        'password': reEnterPassword,
      },
    );
  }

  /// 销毁账户
  static Future<void> destory() async {
    await HttpService.to.post(
      '/users/destory',
      data: {},
    );
  }

  /// tim 数据准备
  static Future<dynamic> chatPrepare(List<String> uids) async {
    return HttpService.to.post(
      '/users/chatPrepare',
      data: {"user_ids": uids},
    );
  }

  /// tim 解散群聊天
  static Future<dynamic> chatDeleteGroup(String userId, String groupId) async {
    return HttpService.to.post(
      '/users/chatDeleteGroup',
      data: {"userId": userId, "groupId": groupId},
    );
  }

  /// 用户列表
  static Future<List<UserModel>> findList(String keyword,
      {int? page, int? pageSize}) async {
    var res = await HttpService.to.post(
      '/users/findList',
      data: {
        "keyword": keyword,
        "page": page,
        "page_size": pageSize,
      },
    );

    return (res.data as List).map((e) => UserModel.fromJson(e)).toList();
  }
}
