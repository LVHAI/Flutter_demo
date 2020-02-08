import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RichTextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichDemo1();
  }

  Widget _richTextDemo(BuildContext context) {
    return Container(
        color: Colors.blueGrey,
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        child: RichText(
            textAlign: TextAlign.right,
//          textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            text: TextSpan(
                text: 'RichText',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(text: '.com',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                      )
                  )
                ]
            )
        )
    );
  }
}

class RichDemo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RichDemo1State();
}

class _RichDemo1State extends State<RichDemo1> {
  TapGestureRecognizer _tapGestureRecognizer;
  TapGestureRecognizer _tapGestureRecognizer1;
//  LongPressGestureRecognizer _longPressGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = new TapGestureRecognizer();
    _tapGestureRecognizer1 = new TapGestureRecognizer()
    ..onTap = _handelLittleTapGes;
//    _longPressGestureRecognizer = new LongPressGestureRecognizer()
//    ..onLongPress = _handelLittleTapGes;
  }

  void dispose() {
    _tapGestureRecognizer.dispose();
    _tapGestureRecognizer1.dispose();
//    _longPressGestureRecognizer.dispose();
    super.dispose();
  }
  void _handelTapGes() {
    print('点击了大标题');
  }
  void _handelLittleTapGes() {
    print('点击了小标题');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.blueGrey,
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        child: RichText(
            textAlign: TextAlign.right,
//          textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            text: TextSpan(
                text: '可以点击的大标题',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
                recognizer: _tapGestureRecognizer..onTap = _handelTapGes,
                children: [
                  TextSpan(text: '点击小标题',
                      recognizer: _tapGestureRecognizer1,
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                      )
                  )
                ]
            )
        )
    );
  }
}