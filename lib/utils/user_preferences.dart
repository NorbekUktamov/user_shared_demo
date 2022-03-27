import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user_model.dart';


class UserPreferences {

  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser  = jsonEncode(user);
    print("Generated json $stringUser");
    prefs.setString('user', stringUser);
  }

    static loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = prefs.getString('user').toString();
    if(stringUser == null || stringUser.isEmpty) {
      print("No Data");
    }
    else {
     Map<String,dynamic> map =jsonDecode(stringUser);
     print("map $map");
     var user=User.fromJson(map);
     print("User ${user.name},${user.email},${user.password},${user.phone}");
  }

  }



  static  removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
    print("Data cleared");
  }
}