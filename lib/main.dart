import 'package:flutter/material.dart';
void main()=> runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,

  ),
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> new HomePageState();

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
            future: DefaultAssetBundle.of(context),
          ),
        ),
      ),
    );
  }
}