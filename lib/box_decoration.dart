import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration阴影效果',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              boxShadow: [//一组阴影
                BoxShadow(
                  color: Colors.redAccent,//阴影颜色
                  offset: Offset(0.0, 0.0),//偏移量
                  blurRadius: 30.0,//模糊范围
                  spreadRadius: -10.0,//传播范围
                )
              ]
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration圆形效果',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              shape: BoxShape.circle//设置形状，circle指圆形，rectangle指方形
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration--border: BorderDirectional',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              border: BorderDirectional(
                  top: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
                start: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
                end: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
                bottom: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
              )
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration--border: Border',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
//              border: Border(
//                top: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
//                left: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
//                right: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
//                bottom: BorderSide(color: Colors.redAccent, width: 2, style: BorderStyle.solid),
//              ),
            border: Border.all(color: Colors.red, width: 3.0, style: BorderStyle.solid)
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration的SweepGradient渐变色',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
//                image: DecorationImage(
//                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
//                  alignment: Alignment.topCenter,
//                  fit: BoxFit.fill,
//                ),
            //设置三种渐变色
            gradient: SweepGradient(
                startAngle: 1.0,
                endAngle: pi * 2,
                colors: [
                  Colors.red,
                  Colors.green
                ],
//              transform: GradientRotation(pi/2)
            )
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration的RadialGradient渐变色',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
                color: Colors.grey,
//                image: DecorationImage(
//                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
//                  alignment: Alignment.topCenter,
//                  fit: BoxFit.fill,
//                ),
                gradient: RadialGradient(//渐变色
                    center: Alignment.centerLeft,
                    radius: 2.0,
                    colors: [
                      Colors.red,
                      Colors.green
                    ]
                )
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 300.0,
            height: 100.0,
            alignment: Alignment.center,
//        color: Colors.grey,
            child: Text('演示BoxDecoration的LinearGradient渐变色',style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                color: Colors.grey,
//                image: DecorationImage(
//                  image: NetworkImage('http://pic.qqtn.com/up/2016-4/2016042917263628852.jpg'),
//                  alignment: Alignment.topCenter,
//                  fit: BoxFit.fill,
//                ),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.red,
                      Colors.green
                    ]
                )
            ),
          ),
        ],
      ),
    );
  }

}