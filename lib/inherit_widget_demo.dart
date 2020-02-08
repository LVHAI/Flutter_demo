import 'package:flutter/material.dart';
import 'package:flutter_demo/inherit/Inherit_widget.dart';
import 'package:flutter_demo/ui/grid_view.dart';
import 'http/http_util.dart';
import 'model/data_model.dart';

class InheritDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InheritedWidgetModel(
      listDate: new List(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('InheritedWidget'),
            actions: <Widget>[
              Icon(Icons.add_box)
            ],
          ),
          body: ListViewHttpDemo(),
//      floatingActionButton: ,
        ),
      ),
    );
  }
}

class ListViewHttpDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewHttpInheritDemoState();
  }
}

class ListViewHttpDemoState extends State<ListViewHttpDemo> {
  List<DataModel> _listData = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  void getData() async {
    _listData = await HttpUtils.getListData();
    if(_listData.length > 0) {
      if(mounted) {
        setState(() {});
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomGridView(listData: _listData,);
  }
}

class CustomGridView extends StatelessWidget {
  final List<DataModel> listData;
  CustomGridView({Key key, this.listData}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2.1,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 10.0
        ),
        children: _getGridView(),
      ),
    );
  }
  List<Widget> _getGridView() {
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

}

class ListViewHttpInheritDemoState extends State<ListViewHttpDemo> {
  List<DataModel> _listData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  void getData() async {
    List<DataModel> listDate = await HttpUtils.getListData();
    if(listDate.length > 0) {
      InheritedWidgetModel ddd = InheritedWidgetModel.of(context);
      InheritedWidgetModel.of(context).listDate = listDate;
      if(mounted) {
        setState(() {});
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomInheritGridView();
  }

}
class CustomInheritGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2.1,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 10.0
        ),
        children: CustomGridViewDemo.getGridView(
            InheritedWidgetModel.of(context) == null ? null : InheritedWidgetModel.of(context).listDate),
      ),
    );
  }
}