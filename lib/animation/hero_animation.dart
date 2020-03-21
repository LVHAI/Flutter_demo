import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;
    // TODO: implement build
    return MaterialApp(
      home: HeroStateLessWidget(),
    );
  }
}
class HeroStateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584773152077&di=bea83773cbd23c082348ed44e61a2702&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F78%2F52%2F01200000123847134434529793168.jpg',
          width: 300.0,
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context){
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      color: Colors.lightBlueAccent,
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                      child: PhotoHero(
                        photo: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584773152077&di=bea83773cbd23c082348ed44e61a2702&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F78%2F52%2F01200000123847134434529793168.jpg',
                        width: 100.0,
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }));
          },
        ),
      ),
    );
  }

}

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width}) : super(key:key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child:  Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      )
    );
  }

}