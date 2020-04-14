import 'package:flutter/material.dart';

class testWidget extends StatefulWidget {
  @override
  _testWidgetState createState() => _testWidgetState();
}

class _testWidgetState extends State<testWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
         Container(
            child:
                myPetListCard(context),
            ),
          Container(
            
          ),
        ],
      ),
      );
  }

  Widget myPetListCard(BuildContext context) {
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
      'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
      'France', 'Georgia', 'Germany', 'Greece', 'Hungary'];
   // final europeanCountries = ['Albania', 'Andorra', ];

    return ListView.builder(
        itemCount: europeanCountries.length,
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
