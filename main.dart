import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveApp());  
}

class ResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Responsive App',
      home:ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:AppBar(
        title:Text('Responsive Layout'),
      ),
      body:LayoutBuilder(
        builder:(context,constraints) {
          if(constraints.maxWidth<600) {
            return MobileLayout();
          }else if(constraints.maxWidth<1200) {
            return TabletLayout();
          }else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Center(
    child:Text('Mobile Layout',style:TextStyle(fontSize:20)),
  );
 }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('tableLayout',style:TextStyle(fontSize:24)),
    );
  }
 }

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('Desktop Layout',style:TextStyle(fontSize:28)),
    );
  }
}