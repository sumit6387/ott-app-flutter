import 'package:flutter/material.dart';
import 'package:netflix_or_hotstar_clone/constants/bg_color.dart';
import 'package:netflix_or_hotstar_clone/screens/login.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text("Change Password")),
      body: Container(
        padding: EdgeInsets.only(left: 8,right: 8),
        child: Center(
          child: Column(
          children: <Widget>[
            Container(
              child: ClipRect(
                child: Image.asset("assets/logo.png",width: 150, height: 120,),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Text("Change Password", style: TextStyle(color: txtColor,fontSize: 20),),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(color: txtColor),
                    decoration: InputDecoration(
                      hintText: "Please enter password",
                      labelText: "Password",
                      suffix: Icon(Icons.remove_red_eye_sharp, color: txtColor,),
                      suffixIconColor: txtColor,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: txtColor,
                          width: 3
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: txtColor,width: 3)
                      ),
                      hintStyle: TextStyle(
                        color: txtColor
                      ),
                      labelStyle: TextStyle(
                        color: txtColor
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(color: txtColor),
                    decoration: InputDecoration(
                      suffix: Icon(Icons.remove_red_eye_sharp, color: txtColor,),
                      suffixIconColor: txtColor,
                      hintText: "Please enter confirm password",
                      labelText: "Confirm Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: txtColor,
                          width: 3
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: txtColor,width: 3)
                      ),
                      hintStyle: TextStyle(
                        color: txtColor
                      ),
                      labelStyle: TextStyle(
                        color: txtColor
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Login();
                    },));
                  }, 
                  child: Text("Submit",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(380, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ))
                  ),
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