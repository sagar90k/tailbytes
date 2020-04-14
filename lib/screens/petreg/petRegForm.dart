import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tailbytes/widgetstore/testWidget.dart';

class petRegForm extends StatefulWidget {
  @override
  _petRegFormState createState() => _petRegFormState();
}

class _petRegFormState extends State<petRegForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
          //height: 400.00,
          //width:MediaQuery.of(context).size.width,
          aspectRatio: 1.0,
          viewportFraction: 3.0,
          autoPlay: false,
          reverse: false,
          enableInfiniteScroll: false,

          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,

          items: [
                  petList,
                  pet1,
                  selectPets
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
                  Container(
                    child: i,
                  )
                  //Text('$i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        )
    );
  }

  Widget petList = Container(
    width:200,
    height: 300,

    margin: EdgeInsets.symmetric(horizontal: 0.0),
    decoration: BoxDecoration(
        color: Colors.red,
    ),
  );
  Widget pet1 = Container(
    width:200,
    height:300,
    margin: EdgeInsets.symmetric(horizontal: 0.0),
    decoration: BoxDecoration(
      color: Colors.green,
    ),
  );
Widget selectPets=
    testWidget();
}
