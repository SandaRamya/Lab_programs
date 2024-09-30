import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
        title:Text('Media Query Responsive UI'),
      ),
      body:Center(
        child:Container(
          width:screenWidth*0.8,
          height:screenHeight*0.4,
          color:Colors.yellow,
          child:Center(
            child:Text(
              screenWidth>500?'Large Screen Layout ':'Small Screen Layout',
              style:TextStyle(
                color:Colors.white,
                fontSize:screenWidth>500?24:16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
