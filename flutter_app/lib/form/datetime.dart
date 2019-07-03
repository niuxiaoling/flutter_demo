import 'package:flutter/material.dart';

class Datetime extends StatelessWidget {
  const Datetime({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('日期')),
        body:Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context,'/dateflutter');
                },
                child: Text('flutter日期')
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context,'/datethird');
                },
                child: Text('第三方日期')
              )
            ],
          ),
        )
      )
    );
  }
}