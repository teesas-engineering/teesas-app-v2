import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../enum/storage_keys.dart';

@lazySingleton
class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<bool> isLoggedIn() async {
    await Future.delayed(const Duration(seconds: 2));
    final result = await _storage.read(key: StorageKeys.token);
    return result != null;
  }

  Future<Map<String, dynamic>?> getUser() => get(StorageKeys.userDetails);

  Future<String?> getUserId() => _storage.read(key: StorageKeys.userId);

  Future<Map<String, dynamic>?> get(String key) async {
    final result = await _storage.read(key: key);
    if (result != null) {
      return jsonDecode(result);
    }
    return null;
  }

  Future<void> write(String key, String value) =>
      _storage.write(key: key, value: value);

  Future<void> saveUser(Map<String, dynamic> value) async {
    await _storage.write(
      key: StorageKeys.userDetails,
      value: jsonEncode(value),
    );
  }

  Future<void> saveCurrentCourse(Map<String, dynamic> value) async {
    await _storage.write(
      key: StorageKeys.currentCourse,
      value: jsonEncode(value),
    );
  }

  Future<Map<String, dynamic>?> getCurrentCourse() =>
      get(StorageKeys.currentCourse);

  Future<void> writeJson(String key, Map<String, dynamic> json) async {
    await write(key, jsonEncode(json));
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: StorageKeys.token);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> tearDown() async {
    await _storage.deleteAll();
  }

  Future<String?> getToken() async {
    return _storage.read(key: StorageKeys.token);
  }

  void saveToken(String token) {
    unawaited(_storage.write(key: StorageKeys.token, value: token));
  }
}
