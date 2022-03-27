import 'dart:async';
import 'package:user_shared_demo/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:user_shared_demo/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static final String id="splash_page";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  var isLoggedin=false;
  _initTimer(){
    Timer(Duration(seconds:3),(){
      if(isLoggedin){
        Navigator.pushReplacementNamed(context,HomePage.id);
      }else{
        Navigator.pushReplacementNamed(context,LoginPage.id);
      }

    });
  }
  @override
  void initState() {
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        color: Colors.white,
        child:Stack(
          children: [
            Center(
              //child: Image.asset("assets/images/ic_logo_amazon.png",height: 80,width: 80,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("Welcome",style: TextStyle(color: Colors.black,fontSize: 17),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
