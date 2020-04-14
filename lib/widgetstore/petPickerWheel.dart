import 'package:flutter/material.dart';

class petPickerWheel extends StatefulWidget {
  @override
  _petPickerWheelState createState() => _petPickerWheelState();
}

class _petPickerWheelState extends State<petPickerWheel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: petPickerWheelCard(context),
    );
  }

  Widget petPickerWheelCard(BuildContext context)
  {
    int _selectedItemIndex=0;
    List<Widget> items = [
      ListTile(
          leading: Icon(Icons.local_activity, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)

      ),
      ListTile(
          leading: Icon(Icons.local_airport, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_atm, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),

          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_bar, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_cafe, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_car_wash, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_convenience_store, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_dining, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_drink, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green,)
      ),
      ListTile(
          leading: Icon(Icons.local_florist, size: 30,color: Colors.red,),
          title: Text('Dog',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w200),),
          subtitle:Text('Dog',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w200),),
          trailing:Icon(Icons.add, size: 30,color: Colors.green)
      ),

    ];
    return Positioned(
      bottom: 50.0,
      left: 10.0,
      right: 10.0,
      child: Container(
        height: 120,
        width: 100,

        child:Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListWheelScrollView(
              itemExtent: 30,
              children: items,

              physics:FixedExtentScrollPhysics(),
              diameterRatio:1.5,
              squeeze: 0.5,
              onSelectedItemChanged: (index) => {
                setState(() {
                  _selectedItemIndex = index;
                })
              },
            ),
          ),
        ),
      ),
    );

  }
}
