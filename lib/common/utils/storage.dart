import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static final Storage _instance = Storage._internal();
  Storage._internal();
  factory Storage() {
    return _instance;
  }

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<T?> getJson<T>(
      String key, T Function(Map<String, dynamic>) fromJson) async {
    var obj = jsonDecode(_prefs.getString(key) ?? '');

    if (obj == null) {
      return null;
    }

    return  fromJson(obj);
  }

  Future<bool> setJson(String key, Object value) async {
    return await _prefs.setString(key, jsonEncode(value));
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  Future<bool> setList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
}
