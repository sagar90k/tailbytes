import 'package:flutter/material.dart';

class registrationFormAni extends StatefulWidget {
  @override
  _registrationFormAniState createState() => _registrationFormAniState();
}

class _registrationFormAniState extends State<registrationFormAni> {
  double x=0;
  double y=0;
  double z=0;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform(transform: 
      Matrix4(1, 0, 0, 0,
              0, 1, 0, 0,
              0, 0, 1, 0,
              0, 0, 0, 1)..rotateX(x)..rotateY(y)..rotateZ(z),
        alignment: FractionalOffset.center,
        child: GestureDetector(
          onPanUpdate: (details){
            setState(() {
              y=y-details.delta.dx/100;
              x=x+details.delta.dy/100;
            });
          },
          child: Container(

            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/images/allpets2.png'),
                    fit: BoxFit.fitWidth)
            ),
          ),
        ),
      ),

    );
  }
}
