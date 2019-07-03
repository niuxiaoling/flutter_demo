import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('test')),
      body: new Column(
      children: <Widget>[
        MyAppBar(
          title:Text('hha',style: Theme.of(context).primaryTextTheme.title)
        ),
        Expanded(
          child: new Center(
            child: new Text('hello world'),
          ),
        )
      ],
     ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 56.0,
      decoration: BoxDecoration(color:Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip:'iconbutton'
          ),
          Expanded(
            child: title,
          ),
          MyButton()
        ],
      ),
    );
  }}

  class MyButton extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return GestureDetector(
        onTap: (){
          print('MyButton was tapped');
        },
        child: new Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin:EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]
          ),
          child: Text('edge'),
        ),
      );
    }
  }