import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _listViewDemo1();
  }

  //自定义方法
  Widget _getListTileData(context,index){
    return ListTile(
        title: Text('ListView_ListTile的使用..$index'),
        leading:Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
        subtitle:Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用..$index')
    );
  }
  Widget _listview_builder_listtile() {
    return ListView.builder(
      itemCount: 20,
        itemBuilder:_getListTileData
    );
  }
  Widget _listView_listTile() {

    return ListView(
      children: <Widget>[
        ListTile(
//          trailing: Image.network(src),//右边图片
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
            fontSize: 20.0,
            color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black45
          ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
        ListTile(
          leading: Image.network('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
          title: Text('ListView_ListTile的使用',style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
          ),),
          subtitle: Text('ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用ListView_ListTile的使用',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black45
            ),),
        ),
      ],
    );
  }
  Widget _listView_separated() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 46.0,
            width: 100,
            padding: EdgeInsets.all(10.0),
            child:Text('dateListView$index', style: TextStyle(
                color: Colors.orange,
                backgroundColor: Colors.grey
            ),),
          );
        },
        separatorBuilder: (context, index) => Divider(),//设置分割线，
        itemCount: 30
    );
  }
  Widget _listView_childrenDelegate() {
    return ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index){
          return Container(
            height: 46.0,
            width: 100,
            padding: EdgeInsets.all(10.0),
            child:Text('dateListView$index', style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.grey
            ),),
          );
        },
        childCount: 30,
        ),
    );
  }
  Widget _listView_builder () {
    return ListView.builder(
      itemCount: 30,
        itemBuilder: (context, index) {
        //可以返回任意类型的Widget
          return Container(
            height: 46.0,
            width: 100,
            padding: EdgeInsets.all(10.0),
            child:Text('dateListView$index', style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.grey
            ),),
          );
        });
  }
  Widget _listView_forDemo() {
    List<Widget> __createChildren() {
      List<Widget> children = new List();
      for(int index = 0; index < 20; index ++) {
        children.add(
            Container(
              margin: EdgeInsets.only(bottom: 16.0,left: 16.0),
              child: Text('dateListView$index', style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.grey
              ),),
            )
        );
      }
      return children;
    }
    return ListView(
      children: __createChildren(),
    );
  }
  Widget _listViewDemo1() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: ListView(
        padding: EdgeInsets.all(16.0),//设置内边距为16
        children: <Widget>[
          Text('dateListView1',style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              backgroundColor: Colors.grey
          ),),
          Text('dateListView2',style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              backgroundColor: Colors.grey
          ),),
          Text('dateListView3',style: TextStyle(
              color: Colors.orange,
              fontSize: 20.0,
              backgroundColor: Colors.grey
          ),),
          Text('dateListView4',style: TextStyle(
              color: Colors.green,
              fontSize: 20.0,
              backgroundColor: Colors.grey
          ),),
          Text('dateListView5',style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 20.0,
              backgroundColor: Colors.grey
          ),),
        ],
      ),
    );
}

}