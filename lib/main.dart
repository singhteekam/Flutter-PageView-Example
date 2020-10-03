
import 'package:PageView/Page1.dart';
import 'package:PageView/Page2.dart';
import 'package:PageView/Page3.dart';
import 'package:PageView/Page4.dart';
import 'package:PageView/Page5.dart';
import 'package:PageView/Page6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Page1()),
    new Center(child:new Page2()),
    new Center(child:new Page3()),
    new Center(child:new Page4()),
    new Center(child:new Page5()),
    new Center(child:new Page6())
  ];
  
  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("PageView"),
        actions: <Widget>[],),
      body: PageView(
        children: 
          _list,
          scrollDirection: Axis.horizontal,
          pageSnapping: true,
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num){
          print("Current page number is "+num.toString());
          _curr=num;
        },
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          FloatingActionButton(
            onPressed: () {
             
              // setState(() {
              //  _list.add(
              //   new Center(child: new Text("2001", style: new TextStyle(fontSize: 60.0))),
              // );   
              // });
              // if(_curr!=_list.length-1)
              //   controller.jumpToPage(_curr+1);
              //   else
              //   controller.jumpToPage(0);
            },
      child:Icon(Icons.add)),
      FloatingActionButton(
        onPressed: (){
          // _list.removeAt(_curr);
          // setState(() {
          //   controller.jumpToPage(_curr-1);
          // });
        },
      child:Icon(Icons.delete)),
        ]
      )
    );
  }
}
