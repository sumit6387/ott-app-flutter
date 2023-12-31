import 'package:flutter/material.dart';
import 'package:netflix_or_hotstar_clone/common/slider.dart';
import 'package:netflix_or_hotstar_clone/constants/bg_color.dart';
import 'package:netflix_or_hotstar_clone/drawers/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/logo.png",width: 65, height: 65,),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/avatar.jpg",width: 35, height: 35,),
            ),
        ],
      ),),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  MYSlider(height: 160,isInfiniteScroll : true),
                  Padding(padding: EdgeInsets.all(10)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Continue Watching",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: txtColor),),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}