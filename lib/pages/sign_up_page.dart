
import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../utils/user_preferences.dart';
import 'home_page.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {

  const SignUpPage({Key? key}) : super(key: key);
  static final id = "sign_up_page";


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  void _doLogin() {



    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String phone = phoneController.text.toString().trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushNamed(context,HomePage.id);
    }

    User user = User(name:name,email: email,phone:phone, password: password,);
    UserPreferences.setUser(user);
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
            SizedBox(height: 80),
            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Let's Get Started!",
                    style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create an account to Q Allure to get all features",
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
                        //#registration
                              //fullname
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,

                                ),
                                child: TextFormField(

                                  controller: nameController,
                                  style: TextStyle(color: Colors.blue),
                                  decoration: InputDecoration(
                                    icon:Icon(Icons.person,) ,
                                    hintText: "Fullname",
                                    hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                    focusedBorder:OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              //Email
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border(
                                  ),
                                  color: Colors.white,
                                ),
                                child: TextFormField(

                                  controller: emailController,
                                  style: TextStyle(color: Colors.blue),
                                  decoration: InputDecoration(
                                    icon:Icon(Icons.email) ,
                                    hintText: "Email",
                                    hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                    border: InputBorder.none,
                                    focusedBorder:OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              //Phone
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                ),
                                child: TextFormField(
                                  controller: phoneController,
                                  style: TextStyle(color: Colors.blue),
                                  decoration: InputDecoration(
                                    icon:Icon(Icons.phone) ,
                                    hintText: "Phone",
                                    hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                    border: InputBorder.none,
                                    focusedBorder:OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              //Password
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                ),
                                child: TextFormField(
                                  controller: passwordController,
                                  style: TextStyle(color: Colors.blue),
                                  decoration: InputDecoration(
                                    icon:Icon(Icons.lock) ,
                                    hintText: "Password",
                                    hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                    border: InputBorder.none,
                                    focusedBorder:OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              //Confirm password
                              Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                              icon:Icon(Icons.lock) ,
                              hintText: "Confirm Password",
                               hintStyle: TextStyle(color: Colors.grey.shade400),
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              border: InputBorder.none,


                            ),
                          ),
                        ),



                        SizedBox(
                          height: 40,
                        ),

                        //#Sign Up button
                        FlatButton(
                            onPressed: () {
                              _doLogin();

                            },
                          child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 70),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue.shade800,
                          ),
                          child: Center(
                            child: Text(
                              "CREATE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),),

                        SizedBox(
                          height: 20,
                        ),

                        //#Bottom
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              onPressed: (){},
                              child: Text("Already have an account?",style:TextStyle(color: Colors.grey.shade800,fontSize: 15) ,),),

                            FlatButton(
                              onPressed: (){
                                Navigator.pushNamed(context,LoginPage.id);
                              },
                              child: Text("Login here",style:TextStyle(color: Colors.blue.shade800,fontSize: 15) ,),),
                          ],
                        ),

                        SizedBox(
                          height: 30,
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