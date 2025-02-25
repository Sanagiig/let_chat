/// 服务器状态
enum IMServerStatus {
  connecting, // 正在连接服务器
  success, // 连机成功
  failed, // 连机失败
}

/// 用户状态
enum IMUserStatus {
  login, // 登录成功
  failed, // 登录失败
  offline, // 断开连接
  expired, // 登录过期
  kicked, // 被踢下线
}

/// 自定义消息
enum IMCustomMessageType {
  c2cCreate, // 单聊天开始
  groupCreate, // 群聊开始
  groupKicked, // 群聊踢出
}

/// IM 状态
class IMStatus {
  IMServerStatus? server; // 服务器
  IMUserStatus? user; // 用户
  IMStatus({this.server, this.user});
}
