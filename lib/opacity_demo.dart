import 'package:flutter/material.dart';

class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Opacity_Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 300.0,
                          left: 16.0,
                          right: 16.0,
                          child: Container(
                            child: Text('我是设置透明度下面的Widget。。。。',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 36.0,
                                  decoration: TextDecoration.lineThrough,
                                  shadows: [
                                    Shadow(color: Colors.red,offset: Offset(1, 1),blurRadius: 1.9),
                                    Shadow(color: Colors.black,offset: Offset(0, 1),blurRadius: 1.9),
                                    Shadow(color: Colors.blue,offset: Offset(0.5, 0.5),blurRadius: 1.9),
                                  ],
                                )
                            ),
                          ),
                      ),

                      Opacity(
                        opacity: 0.6,//设置透明度
                        child: Container(

                          color: Colors.black,
                          padding: EdgeInsets.all(16.0),
                          alignment:Alignment.bottomCenter,
                          child: Column(
                            children: <Widget>[
                              Text('我是设置透明度上面的Widget。。。。',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 36.0,
                                    decoration: TextDecoration.underline
                                ),
                              ),
                            ],
                          )
                        ),
                      ),

                    ],
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }

}