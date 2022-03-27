import 'package:flutter/material.dart';
import 'package:user_shared_demo/pages/sign_up_page.dart';

import '../model/user_model.dart';
import '../utils/user_preferences.dart';
import 'home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final id= "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  void _dologin(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String phone = phoneController.text.toString().trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushNamed(context,HomePage.id);
    }
    User user = User(name:name,email: email,phone:phone, password: password,);
    UserPreferences.storeUser(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 200),
            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login in to your existant account of Q Alurre",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  )
                ],
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        //#Login
                        //email
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: emailController,
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Password
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: passwordController,
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 200),
                          child: Text(
                            'Forgot password?',
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //#Create
                        FlatButton(
                          onPressed: () {
                            _dologin();
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue.shade900,
                            ),
                            child: Center(
                              child: Text(
                                "LOG IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Or connect using',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey.shade500),
                          ),
                        ),

                        //#Bottom
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text('Facebook'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo.shade800,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 13),
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              child: Text('Google'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 13),
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15),
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context,SignUpPage.id);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
