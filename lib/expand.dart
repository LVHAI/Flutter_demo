import 'package:flutter/material.dart';

class ExpandDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      color: Colors.grey,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
              child: Container(
                alignment: Alignment.center,
//                height: 200.0,
                color: Colors.redAccent,
                child: null,
              )
          ),
//          Container(
//            color: Colors.greenAccent,
//            child: null,
//            width: 50,
//          ),
          Expanded(
              flex: 1,
              child:Container(
                alignment: Alignment.center,
//                height: 200.0,
                color: Colors.blue,
                child: null,
              )
          ),
        ],
      ),
    );
  }
}
