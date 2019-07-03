import 'package:flutter/material.dart';

class Dateflutter extends StatelessWidget {
  const Dateflutter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('fluter日期')),
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