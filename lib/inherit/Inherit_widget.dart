import 'package:flutter/material.dart';
import 'package:flutter_demo/model/data_model.dart';

class InheritedWidgetModel extends InheritedWidget {
  List<DataModel> listDate;//保存的数据
  final Widget child;//子widget

  //构造函数，初始化的时候调用
  InheritedWidgetModel({Key key, this.listDate, this.child}):super(key:key,child:child);

  //用于获取自定义的InheritedWidgetModel，然后在获取InheritedWidgetModel里面的数据
  static InheritedWidgetModel of (BuildContext context) {
    final InheritedWidgetModel model = context.inheritFromWidgetOfExactType(InheritedWidgetModel);
    return model;
  }

  @override
  bool updateShouldNotify(InheritedWidgetModel oldWidget)  {
    bool flag = listDate != oldWidget.listDate;
    return flag;
  }

}