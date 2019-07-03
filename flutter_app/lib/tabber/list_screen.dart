import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('form'),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/radio",arguments: {'id':123});
              },
              child: Text('radio'),
            ),
             RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/checkbox");
              },
              child: Text('checkbox'),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/date');
              },
              child: Text('日期组件'),
            ),
             RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/login");
              },
              child: Text('登录界面'),
            ),
             RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/form');
              },
              child: Text('学员信息录入系统'),
            )
        ],
      ),
      ),
    );
  }
}