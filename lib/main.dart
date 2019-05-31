import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
void main()=> runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,

  ),
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> new HomePageState();
  List data;

}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter json practice"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle
          .of(context)
          .loadString('load_json/person.json'),
            builder: (context, snapshort){
              //Decode Json
              var mydata = json.decode(snapshort.data.toString());

              return new ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text("Name:" + mydata [index]['name']),
                        new Text("Age:" + mydata [index]['age']),
                        new Text("Height:" + mydata [index]['height']),
                        new Text("Weight:" + mydata [index]['weight']),
                        new Text("Gender:" + mydata [index]['gender']),
                        new Text("HairColour:" + mydata [index]['hair_colour']),

                      ],
                    ),
                  );
                  },
                itemCount: mydata == null ? 0 :mydata.length,

              );
            },
          ),
        ),
      ),
    );
  }
}