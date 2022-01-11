import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'constants.dart';
class LoginActivity extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: size.height / 5,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          appPrimaryColor,
                          appPrimaryColor,
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    )),
                child: Text("Login", style: TextStyle(color: Colors.white),)
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: size.height * 0.04, color: Colors.black),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextField(
                controller: usernameController,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextField(
                controller: passwordController,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: (){},
                ),
              ),

              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 16.0, color: appPrimaryColor),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}


