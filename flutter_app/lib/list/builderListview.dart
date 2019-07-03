import 'package:flutter/material.dart';
import 'package:flutter_app/asset.dart';

class BuildListview extends StatefulWidget {
  BuildListview({Key key}) : super(key: key);

  _BuildListviewState createState() => _BuildListviewState();
}

class _BuildListviewState extends State<BuildListview> {
  // 自定义方法实现动态列表1
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(title: Text('这是一个标题$i')));
    }
    return list;
  }

  // 方法2
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return ListTile(
        title: Text(value['title']),
      );
    });
    return tempList.toList(); // toList转为集合的方法
  }
  // 方法三
  Widget _getBuilderdata(context,index){
    return ListTile(
      title:Text(listData[index]['title'])
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('动态列表'),
        ),
        body: Container(
              child: ListView(
                children: this._getListData(),
              ),
            )
        );
  }
}
