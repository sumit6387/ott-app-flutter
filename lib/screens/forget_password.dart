import 'package:flutter/material.dart';
import 'package:netflix_or_hotstar_clone/constants/bg_color.dart';
import 'package:netflix_or_hotstar_clone/screens/change_password.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text("Forget Password")),
      body: Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: ClipRect(
                  child: Image.asset(
                    "assets/logo.png",
                    width: 150,
                    height: 120,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                "Forget Password",
                style: TextStyle(color: txtColor, fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(color: txtColor),
                      decoration: InputDecoration(
                        suffix: Icon(Icons.email, color: txtColor),
                        suffixIconColor: txtColor,
                        hintText: "Please Enter Email",
                        labelText: "Email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: txtColor, width: 3)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: txtColor, width: 3),
                        ),
                        hintStyle: TextStyle(
                          color: txtColor,
                        ),
                        labelStyle: TextStyle(color: txtColor),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ChangePassword();
                          },
                        ));
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(380, 50)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
