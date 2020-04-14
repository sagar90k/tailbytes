import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselLogin extends StatefulWidget {
  @override
  _CarouselLoginState createState() => _CarouselLoginState();
}

class _CarouselLoginState extends State<CarouselLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: CarouselSlider(
          //height: 400.00,
          //width:MediaQuery.of(context).size.width,
          aspectRatio: 1.0,
          viewportFraction: 3.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          autoPlayAnimationDuration: Duration(milliseconds: 1),
          autoPlayCurve: Curves.easeInToLinear,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,

         items: [
                  'assets/images/dog.gif',
                  'assets/images/bird.gif',
                  'assets/images/fish.gif',
                  'assets/images/cat.gif',
            ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                print(context.findRenderObject());
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent
                    ),
                    child:
                    Image.asset(i),
                    //Text('$i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        )
    );
  }
}
