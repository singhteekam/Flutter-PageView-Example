import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text("Page 3",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          
        ]
      ),
    );
  }
}