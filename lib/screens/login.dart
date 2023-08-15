import 'package:flutter/material.dart';
import '../constants/bg_color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ClipRect(
                child: Image.asset("assets/logo.png",width: 180, height: 120,),
              ),
            ),
            // Padding(padding: EdgeInsets.only(top: 9)),
            Container(
              child: Text("Login to Your Account", style: TextStyle(fontSize: 20,color: txtColor),),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Form(
              key: _myKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(color: txtColor),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email,),
                      suffixIconColor: txtColor,
                      hintText: "Please enter your email",
                      labelText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3,
                          color: txtColor
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3,
                          color: txtColor
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: txtColor
                      ),
                      labelStyle: TextStyle(
                        color: txtColor
                      ),
                    ),
                    validator: (value) {
                      return value != null || value != "" ? null : "Please enter email";
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                TextFormField(
                    obscureText: true,
                    style: TextStyle(color: txtColor),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_sharp,),
                      suffixIconColor: txtColor,
                      hintText: "Please enter your Password",
                      labelText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3,
                          color: txtColor
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3,
                          color: txtColor
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: txtColor
                      ),
                      labelStyle: TextStyle(
                        color: txtColor
                      ),
                    ),
                    validator: (value) {
                      return value != null || value != "" ? null : "Please enter password";
                    },
                  )
                ,Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 9),
                  child: Text("Forget Password", style: TextStyle(color: txtColor,)),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                ElevatedButton(onPressed: (){
                  _myKey.currentState!.validate();
                }, child: Text("Submit",style: TextStyle(fontSize: 20),), style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(400, 50))),),
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("____________________",style: TextStyle(color: txtColor),),
                    Text("Or continue with",style: TextStyle(color: txtColor),),
                    Text("____________________",style: TextStyle(color: txtColor),)
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(onPressed: (){}, child: ClipRect(child: Image.asset("assets/google1.png",width: 50,height: 30),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),)),
                    ElevatedButton(onPressed: (){}, child: ClipRect(child: Image.asset("assets/facebook1.png",width: 50,height: 30),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey))),
                    ElevatedButton(onPressed: (){}, child: ClipRect(child: Image.asset("assets/apple1.png",width: 50,height: 30,color: txtColor,),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey))),
                  ],
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?", style: TextStyle(color: txtColor, fontSize: 15)),
                      Text("Signup", style: TextStyle(color: txtColor, fontSize: 20),),
                    ],
                  )
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}