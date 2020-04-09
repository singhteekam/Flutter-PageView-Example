import 'package:flutter/material.dart';


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text("Page 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          
        ]
      ),
    );
  }
}