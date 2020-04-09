import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text("Page 2",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          
        ]
      ),
    );
  }
}