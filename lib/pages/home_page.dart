
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../utils/user_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final id="home_page";


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

User user=UserPreferences.getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to HomePage",style: TextStyle(fontSize: 25),),
            Text("Your name:"+user.name,style: TextStyle(fontSize: 25),),
            Text("Your email:"+user.email,style: TextStyle(fontSize: 25),),
            Text("Your phone:"+user.phone,style: TextStyle(fontSize: 25),),
            Text("Your password:"+user.password,style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
