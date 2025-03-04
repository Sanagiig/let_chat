class UserProfileModel {
  String? id;
  String? username;
  String? email;
  String? nickName;
  String? avatar;
  dynamic intro;
  String? vipGrade;
  DateTime? vipExpireTime;
  int? totalTimes;
  DateTime? lastTime;
  DateTime? regTime;
  String? imSign;

  UserProfileModel({
    this.id,
    this.username,
    this.email,
    this.nickName,
    this.avatar,
    this.intro,
    this.vipGrade,
    this.vipExpireTime,
    this.totalTimes,
    this.lastTime,
    this.regTime,
    this.imSign,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      nickName: json['nick_name'] as String?,
      avatar: json['avatar'] as String?,
      intro: json['intro'] as dynamic,
      vipGrade: json['vip_grade'] as String?,
      vipExpireTime: json['vip_expire_time'] == null
          ? null
          : DateTime.parse(json['vip_expire_time'] as String),
      totalTimes: json['total_times'] as int?,
      lastTime: json['last_time'] == null
          ? null
          : DateTime.parse(json['last_time'] as String),
      regTime: json['reg_time'] == null
          ? null
          : DateTime.parse(json['reg_time'] as String),
      imSign: json['im_sign'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'nick_name': nickName,
        'avatar': avatar,
        'intro': intro,
        'vip_grade': vipGrade,
        'vip_expire_time': vipExpireTime?.toIso8601String(),
        'total_times': totalTimes,
        'last_time': lastTime?.toIso8601String(),
        'reg_time': regTime?.toIso8601String(),
        'im_sign': imSign,
      };
}
