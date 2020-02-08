
import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _appBar_bottom_demo();
  }

  Widget _appBarDemo1() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          primary: true,//为false的时候会影响leading，actions、titile组件，导致向上偏移
          textTheme: TextTheme(//设置AppBar上面各种字体主题色
//            title: TextStyle(color: Colors.red),
          ),
          actionsIconTheme: IconThemeData(color: Colors.blue,opacity: 0.6),//设置导航右边图标的主题色，此时iconTheme对于右边图标颜色会失效
          iconTheme: IconThemeData(color: Colors.black,opacity: 0.6),//设置AppBar上面Icon的主题颜色
          brightness: Brightness.dark,//设置导航条上面的状态栏显示字体颜色
          backgroundColor: Colors.amber,//设置背景颜色
//          shape: CircleBorder(side: BorderSide(color: Colors.red, width: 5, style: BorderStyle.solid)),//设置appbar形状
//          automaticallyImplyLeading: true,//在leading为null的时候失效
          centerTitle: true,
          title: Text('AppBar Demo'),
          leading: IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                print('add click....');
              }
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){print('search....');}),
            IconButton(icon: Icon(Icons.history), onPressed: (){print('history....');}),
          ],
        ),
      ),
    );
  }
  Widget _appBar_bottom_demo() {
    return MaterialApp(
      home: DefaultTabController(
        length: 14,
        child: Scaffold(
          appBar: AppBar(
            primary: true,//为false的时候会影响leading，actions、titile组件，导致向上偏移
            textTheme: TextTheme(//设置AppBar上面各种字体主题色
//            title: TextStyle(color: Colors.red),
            ),
            actionsIconTheme: IconThemeData(color: Colors.blue,opacity: 0.6),//设置导航右边图标的主题色，此时iconTheme对于右边图标颜色会失效
            iconTheme: IconThemeData(color: Colors.black,opacity: 0.6),//设置AppBar上面Icon的主题颜色
            brightness: Brightness.dark,//设置导航条上面的状态栏显示字体颜色
            backgroundColor: Colors.amber,//设置背景颜色
//          shape: CircleBorder(side: BorderSide(color: Colors.red, width: 5, style: BorderStyle.solid)),//设置appbar形状
//          automaticallyImplyLeading: true,//在leading为null的时候失效

//          bottom: PreferredSize(child: Text('data'), preferredSize: Size(30, 30)),//出现在导航条底部的按钮
            bottom: TabBar(
              onTap: (int index){
                print('Selected......$index');
              },
              unselectedLabelColor: Colors.grey,//设置未选中时的字体颜色，tabs里面的字体样式优先级最高
                unselectedLabelStyle: TextStyle(fontSize: 20),//设置未选中时的字体样式，tabs里面的字体样式优先级最高
              labelColor: Colors.black,//设置选中时的字体颜色，tabs里面的字体样式优先级最高
                labelStyle: TextStyle(fontSize: 20.0),//设置选中时的字体样式，tabs里面的字体样式优先级最高
              isScrollable: true,//允许左右滚动
                indicatorColor: Colors.red,//选中下划线的颜色
                indicatorSize: TabBarIndicatorSize.label,//选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
                indicatorWeight: 6.0,//选中下划线的高度，值越大高度越高，默认为2。0
//                indicator: BoxDecoration(),//用于设定选中状态下的展示样式
                tabs: [
                  Text('精选',style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.0
                  ),),
                  Text('猜你喜欢',style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 16.0
                  ),),
                  Text('母婴'),
                  Text('儿童'),
                  Text('女装'),
                  Text('百货'),
                  Text('美食'),
                  Text('美妆'),
                  Text('母婴'),
                  Text('儿童'),
                  Text('女装'),
                  Text('百货'),
                  Text('美食'),
                  Text('美妆'),
                ]
            ),
            centerTitle: true,
            title: Text('AppBar Demo'),
            leading: IconButton(
                icon: Icon(Icons.add),
                onPressed: (){
                  print('add click....');
                }
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){print('search....');}),
              IconButton(icon: Icon(Icons.history), onPressed: (){print('history....');}),
            ],
          ),
          body: TabBarView(
              children: [
                Text('精选'),
                Text('猜你喜欢'),
                Text('母婴'),
                Text('儿童'),
                Text('女装'),
                Text('百货'),
                Text('美食'),
                Text('美妆'),
                Text('母婴'),
                Text('儿童'),
                Text('女装'),
                Text('百货'),
                Text('美食'),
                Text('美妆'),
              ]
          ),
        ),
      ),
    );
  }
}