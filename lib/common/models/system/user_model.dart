class UserModel {
  String? id;
  String? username;
  String? nickName;
  String? avatar;

  UserModel({
    this.id,
    this.username,
    this.nickName,
    this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String?,
      username: json['attributes']['username'] as String?,
      nickName: json['attributes']['nick_name'] as String?,
      avatar: json['attributes']['avatar'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'nick_name': nickName,
        'avatar': avatar,
      };
}
