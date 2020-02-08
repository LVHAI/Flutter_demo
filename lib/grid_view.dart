import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _gridViewCustom();
  }

  Widget _gridViewCustom() {
    //创建方式一
    List<Widget> __gridViewChildCustom() {
      List<Widget> children = new List();
      for(int index = 0; index < 20; index ++) {
        children.add(
            Container(
              color: Colors.orange,
              margin: EdgeInsets.only(bottom: 16.0,left: 16.0,right: 16.0),
              child: Text('GridView..$index', style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.grey
              ),),
            )
        );
      }
      return children;
    }
    return GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing:20.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 0.8,
        ),
        childrenDelegate: SliverChildListDelegate(__gridViewChildCustom())
    );
    //创建方式二
//    return GridView.custom(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 3,
//          mainAxisSpacing:20.0,
//          crossAxisSpacing: 20.0,
//          childAspectRatio: 0.8,
//        ),
//        childrenDelegate: SliverChildBuilderDelegate(
//                (BuildContext context, int index) {
//                  return Container(
//                    color: Colors.orange,
//                    child: Text('GridView$index', style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 20.0
//                    ),),
//                  );
//                },
//          childCount: 6
//        ),
//    );
  }
  Widget _gridViewCount() {
    return GridView.count(
        crossAxisCount: 3,
      mainAxisSpacing:20.0,
      crossAxisSpacing: 20.0,
      childAspectRatio: 0.8,
      children: <Widget>[
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
    );
  }
  Widget _gridViewBuilder() {
    Widget __itemBuilder(context,index) {
      return Stack(
        children: <Widget>[
          Image.network('http://pic2.16pic.com/00/01/72/16pic_172477_b.jpg',fit: BoxFit.cover,),
          Positioned(
//            left: 20.0,
              top: 20.0,
              child: Text('GridView演示$index'))
        ],
      );
    }
    return GridView.builder(
//      scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing:20.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 0.8
        ),
        itemBuilder: __itemBuilder
    );
  }
  Widget _gridViewDemo() {
    return GridView(
      padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 0.7
      ),
      children: <Widget>[
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
    );
  }
}