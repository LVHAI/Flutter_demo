import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class StateManagerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      color: Colors.white,
      home: StateFulWidgetDemo2(),
    );
  }
}

class StateLessDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理Widget'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0,),
            Container(
              height: 100.0,
              color: Colors.black,
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100.0,
              color: Colors.yellowAccent,
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100.0,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class StateFulWidgetDemo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateFulWidgetDemo1State();

}
class StateFulWidgetDemo1State extends State<StateFulWidgetDemo1> {
  List<Color> _data_colors;
  Random _random;
  @override
  void initState() {
    print('initState');
    // TODO: implement initState
    super.initState();
    _random = Random(255);
    _data_colors = new List();
//    _data_colors.add(Color.fromARGB(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1));
  }
  @override
  Widget build(BuildContext context) {
    print('build-----${_data_colors.length}');
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _data_colors.add(Color.fromARGB(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1));
        });
      },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('状态管理Widget'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text('第$index..个Text',style: TextStyle(
                  fontSize: 20.0,
                  color: _data_colors[index]
                ),),
                subtitle: Text('第$index..个subtitle。。。。。。。'),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: _data_colors.length == 0 ? 0 : _data_colors.length
        ),
      ),
    );
  }
}

class StateFulWidgetDemo2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateFulWidgetDemo2State();
}

class StateFulWidgetDemo2State extends State<StateFulWidgetDemo2> {
  List<DataModel> _dataModel = new List();
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future getData() async {
    final response =
        await http.get('https://raw.githubusercontent.com/LVHAI/TestData/master/flutter_data.json');
    if (response.statusCode == 200) {
      print('object............${response.body}');
      final responseBody = json.decode(response.body);
      List<DataModel> datas = responseBody.map<DataModel>((json) => DataModel.changeToModel(json)).toList();
      print('object............$datas');

      setState(() {//更新状态
        _dataModel = datas;
      });
      return datas;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理Widget'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              childAspectRatio: 2.1,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 10.0
            ),
          children: _getGridView(),
        ),
      ),
    );
  }
  List<Widget> _getGridView() {
    List<Widget> datas = new List();
   return _dataModel.map<Widget>((dataModel) => Container(
     alignment: Alignment.center,
     padding: EdgeInsets.only(left:10.0, right: 10.0),
//     height: 100.0,
//     color: Colors.redAccent,
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


class DataModel{
  final String title;
  final String subTitle;
  final String imageUrl;
  DataModel(
      this.title,
      this.subTitle,
      this.imageUrl);

  DataModel.changeToModel(Map jsonMap)
      :title=jsonMap['title'],
        subTitle=jsonMap['subTitle'],
        imageUrl=jsonMap['imageUrl'];

}

class StateFulWidgetDemo3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateFulWidgetDemo3State();
}

class StateFulWidgetDemo3State extends State<StateFulWidgetDemo3> {
  Future<List<DataModel>> getData() async {
    final response =
    await http.get('https://raw.githubusercontent.com/LVHAI/TestData/master/flutter_data.json');
    if (response.statusCode == 200) {
      print('object............${response.body}');
      final responseBody = json.decode(response.body);
      List<DataModel> datas = responseBody.map<DataModel>((json) => DataModel.changeToModel(json)).toList();
      print('object............$datas');
      return datas;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理Widget'),
        backgroundColor: Colors.orange,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<List<DataModel>> snapData) {

            if(snapData.connectionState == ConnectionState.waiting) {
              return Container(
                alignment: Alignment.center,
                color: Colors.grey,
                child: Text('Loading......',style: TextStyle(
                    decoration: TextDecoration.none
                ),),
              );
            }

            return ListView(
              children: snapData.data.map<Widget>((dataModel){
                return  Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(dataModel.imageUrl),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    height: 160.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 16.0,
                            top: 16.0,
                            child: Text(dataModel.title, style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none
                            ),)),
                        Positioned(
                            left: 16.0,
                            right: 16.0,
                            top: 40.0,
//             height: 60,
                            child: Text(dataModel.subTitle, style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                decoration: TextDecoration.none
                            ),))
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          }
      ),
    );
  }

}