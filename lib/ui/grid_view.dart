import 'package:flutter/material.dart';
import 'package:flutter_demo/model/data_model.dart';

class CustomGridViewDemo {
  static Widget getGridView(List<DataModel> listData) {
    List<Widget> _getGridViewCell() {
      return listData.map<Widget>((dataModel) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left:10.0, right: 10.0),
        child: Stack(
          children: <Widget>[
            Image.network(dataModel.imageUrl,fit: BoxFit.cover,),
            Positioned(
                left: 16.0,
                top: 16.0,
                child: Container(
                  child: Text(dataModel.title, style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),),
                )),
            Positioned(
                left: 16.0,
                right: 16.0,
                top: 40.0,
//             height: 60,
                child: Text(dataModel.subTitle, style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),))
          ],
        ),
      )).toList();
    }
    print('listData cnt..........${listData.length}');
    return listData.length == 0 ? Text('数据正在加载中。。。。。。', style: TextStyle(
        fontSize: 30,
        color: Colors.grey
    ),) :GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2.1,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 10.0
      ),
      children: _getGridViewCell(),
    );
  }



}