import 'package:flutter/material.dart';

class addPetCard extends StatefulWidget {
  @override
  _addPetCardState createState() => _addPetCardState();
}

class _addPetCardState extends State<addPetCard> {
  String msg = 'Flutter FloatingButton Example';
  int petCount=0;
  int activate_petform=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){
          setState(() {
            activate_petform =1;
          });
          print("on pressed activate_petform: $activate_petform ");
        },
       backgroundColor: Colors.red,
       icon: Icon(Icons.add_circle,color: Colors.white,),
       label: Text('Add your pets', style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: Stack(
        children: <Widget>[
          Container(
            child:myPetListCard(context),
          ),
          Positioned(
            bottom:100,
              child:
                   addNewPetCard(context),
              ),
            ],
          ),
      );
  }

  Widget addNewPetCard(BuildContext context){
    if( activate_petform == 1 ) {
      print('in addNewPetCard');
      return Container(
          width:150,
          child: Card(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.yellow,
                        highlightColor: Colors.blue,
                        child: Icon(Icons.add_circle, size: 30),
                        onTap: () {
                          setState(() {
                            petCount++;
                          });
                          print("petCount increased $petCount");
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.yellow,
                        highlightColor: Colors.blue,
                        child: Icon(Icons.delete, size: 30),
                        onTap: () {
                          setState(() {
                            if(petCount==0)
                              {
                                petCount=0;
                              }
                            else{
                              petCount--;
                            }
                          });
                          print("petCount decreased $petCount");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
    }
    else{
      return Container();
    }
  }

  Widget myPetListCard(BuildContext context) {
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
      'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
      'France', 'Georgia', 'Germany', 'Greece', 'Hungary'];
    // final europeanCountries = ['Albania', 'Andorra', ];

    return ListView.builder(
      itemCount: petCount,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card( //                           <-- Card widget
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    child: Image.asset('assets/images/cat.gif'),
                  ),
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin:EdgeInsets.only(top:20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('Dagga',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w300,fontSize: 20),),
                          Divider(),
                          Text('Voila! Page has been created for "Petname". You can update it later from your profile',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 8),),
                        ],
                      ),
                    )
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.delete_forever, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
