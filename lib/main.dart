import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_shared_demo/pages/home_page.dart';
import 'package:user_shared_demo/pages/login_page.dart';
import 'package:user_shared_demo/pages/sign_up_page.dart';
import 'package:user_shared_demo/pages/splash_page.dart';
import 'package:user_shared_demo/utils/user_preferences.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignUpPage.id:(context)=>SignUpPage(),
      },
    );
  }
}
