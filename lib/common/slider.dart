import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix_or_hotstar_clone/constants/bg_color.dart';

class MYSlider extends StatefulWidget {
  const MYSlider({Key? key,required this.height, required this.isInfiniteScroll});

  final double height;
  final bool isInfiniteScroll;

  @override
  State<MYSlider> createState() => _MYSliderState();
}

class _MYSliderState extends State<MYSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: <Widget>[
              Container(
                child: Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/img-1.jpg",
                            fit: BoxFit.cover,
                            height: 200.0,
                          ),
                        ));
                  },
                ),
              ),
              Container(
                child: Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/img-2.jpg",
                            fit: BoxFit.cover,
                            height: 200.0,
                          ),
                        ));
                  },
                ),
              ),
              Container(
                child: Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/img-3.jpg",
                            fit: BoxFit.cover,
                            height: 200.0,
                          ),
                        ));
                  },
                ),
              )
            ],
            options: CarouselOptions(
                height: widget.height,
                enlargeCenterPage: true,
                enableInfiniteScroll: widget.isInfiniteScroll,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2))),
        Container(
          padding: const EdgeInsets.only(left: 40),
          child: Align(
            alignment: Alignment.bottomLeft,
            heightFactor: 3.4,
            widthFactor: 5,
            child: Row(
              children: <Widget>[
                MaterialButton(
                  height: 25,
                  color: Colors.blue,
                  onPressed: () {},
                  padding: EdgeInsets.all(1),
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.play_arrow,
                    color: txtColor,
                    size: 18.0,
                  ),
                ),
                Text(
                  "Pathan",
                  style: TextStyle(
                      color: txtColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
