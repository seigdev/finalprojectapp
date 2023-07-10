import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;

  static const _keyLoggedIn = 'loggedin';
  static const _keyUserId = 'userId';
  static const _keyUserType = 'userType';
  static const _keyName = 'name';

  //
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setLoginData(bool login) async =>
      await _preferences?.setBool(_keyLoggedIn, login);

  static bool? getLoginData() => _preferences?.getBool(_keyLoggedIn);

// get user id
  static Future setUserId(String userId) async =>
      await _preferences?.setString(_keyUserId, userId);

  static String? getUserId() => _preferences?.getString(_keyUserId);

  // get user id
  static Future setUserType(String userType) async =>
      await _preferences?.setString(_keyUserType, userType);

  static String? getUserType() => _preferences?.getString(_keyUserType);

  //resident firstname
  static Future setName(String name) async =>
      await _preferences?.setString(_keyName, name);

  static String? getName() => _preferences?.getString(_keyName);

  static Future<bool>? clear() => _preferences?.clear();
}
