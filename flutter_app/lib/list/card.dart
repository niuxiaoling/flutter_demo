import 'package:flutter/material.dart';
import 'package:flutter_app/asset.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('卡片布局')),
      body:Container(
        child: ListView(
          children: listData.map((value){
            return Card(
              margin:EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(value['imgurl'],fit:BoxFit.cover),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                     backgroundImage: NetworkImage(value['imgurl'],),
                    ),
                    title: Text(value['title']),
                    subtitle: Text(value['description'],overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}