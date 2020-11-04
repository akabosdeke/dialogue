import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: "Alert dialoguere",
       home:  Myhomepage(),
     );

   }
 }

class Myhomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert title'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
            height: 250,
            width: 300,
            color: Colors.red,
            child:  Center(

              child: RaisedButton(
                child: Text('click me'),

                onPressed: ()
                => showDialog(context:context,

                    builder: (context)=>Container(
                     
                      child: AlertDialog(


                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))

                        ) ,

                        title: Text('Arey you sure',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.blue,fontSize: 20),),
                        content:Container(
                          height: 350,
                          width: 350,
                          child: Column(

                            children: [

                              Text("Welcome to my site"),
                              SizedBox(height: 20,),
                              Column(
                                children: [
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Address',
                                      prefixIcon: Icon(Icons.location_city,color: Colors.redAccent,),
                                      hintText: "Enter your Address",
                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'city',
                                      prefixIcon: Icon(Icons.location_city,color: Colors.redAccent,),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),


                        actions: [

                          FlatButton(onPressed: (){
                            Navigator.of(context).pop(false);
                            print("No button pressed");
                          },
                            child: Text('No',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.blue,fontSize: 20),),
                            height: 15,
                          ),


                          FlatButton(onPressed: (){
                            print("No button pressed");
                            Navigator.of(context).pop(false);
                          },
                            child: Text('yes'),
                          ),

                        ],
                      )),
                    )
              ),

            ),


          ),
        ],
      )

    );
  }

}









