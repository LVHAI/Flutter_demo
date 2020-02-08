import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Wrap(
//      direction: Axis.vertical,
    direction: Axis.horizontal,
       spacing: 16.0, //在direction: Axis.horizontal的时候指左右两个Widget的间距,在direction: Axis.vertical的时候指上下两个widget的间距
       runSpacing: 16.0,//在direction: Axis.horizontal的时候指上下两个Widget的间距,在direction: Axis.vertical的时候指左右两个widget的间距
      alignment: WrapAlignment.spaceEvenly,
       crossAxisAlignment: WrapCrossAlignment.end,
       textDirection: TextDirection.rtl,
       verticalDirection: VerticalDirection.up,
       children: <Widget>[
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 86.0,
             height: 360.0,
           color: Colors.orange,
             child: Text('历史记录1'),
           ),
         ),
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 106.0,
             height: 36.0,
             color: Colors.redAccent,
             child: Text('历史记录2'),
           ),
         ),
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 86.0,
             height: 360.0,
             color: Colors.blue,
             child: Text('历史记录3'),
           ),
         ),
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 106.0,
             height: 36.0,
             color: Colors.greenAccent,
             child: Text('历史记录4'),
           ),
         ),
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 86.0,
             height: 36.0,
             color: Colors.amber,
             child: Text('历史记录5'),
           ),
         ),
         ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
           child: Container(
             alignment: Alignment.center,
             width: 106.0,
             height: 36.0,
             color: Colors.indigoAccent,
             child: Text('历史记录6'),
           ),
         ),
       ],
     );
  }
}