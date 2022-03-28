import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user_model.dart';


class UserPreferences {

  static late SharedPreferences _preferences;

  static const _keyUser = 'user';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
    print("Generated json $json");

  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    print(json);
    if(json == null || json.isEmpty) {
      print("No Data");
    }
    Map<String,dynamic> map =jsonDecode(json!);
    print("Getting map  $map");
    var user=User.fromJson(map);
    print("User's: Name:${user.name}, Email:${user.email},Password: ${user.password},Phone:${user.phone}");
    return  user;

  }








  // static  storeUser(User user) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String stringUser  = jsonEncode(user);
  //   print("Generated json $stringUser");
  //   prefs.setString('user', stringUser);
  // }
  //
  //   static loadUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String stringUser = prefs.getString('user').toString();
  //   if(stringUser == null || stringUser.isEmpty) {
  //     print("No Data");
  //   }
  //   else {
  //    Map<String,dynamic> map =jsonDecode(stringUser);
  //    print("map $map");
  //    var user=User.fromJson(map);
  //    print("User ${user.name},${user.email},${user.password},${user.phone}");
  // }
  //
  // }
  //
  //
  //
  // static  removeUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.remove("user");
  //   print("Data cleared");
  // }
}