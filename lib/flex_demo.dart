import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flex(
        direction: Axis.horizontal,
//    direction: Axis.vertical,
      children: <Widget>[
        Container(
          width: 90.0,
          height: 100.0,
          color: Colors.redAccent,
        ),
        SizedBox(width: 6,),
        Container(
          width: 90.0,
          height: 100.0,
          color: Colors.greenAccent,
        ),
        SizedBox(width: 6,),
        Container(
          width: 90.0,
          height: 100.0,
          color: Colors.blue,
        ),
        SizedBox(width: 6,),
        Container(
          width: 90.0,
          height: 100.0,
          color: Colors.orange,
        ),

      ],
    );
  }
}