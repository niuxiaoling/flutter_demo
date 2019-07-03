import 'package:flutter/material.dart';
import 'package:flutter_app/asset.dart';

// 1.通过GridView.count 实现网格布局
// 2.通过GridView.builder实现网格布局
class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);
  List<Widget> _getData(){
    List<Widget> list = new List();
    for(var i=0;i<listData.length;i++){
      list.add(
        Container(
          child:Column(
            children: <Widget>[
              Image.network(listData[i]['imgurl']),
              SizedBox(height: 10.0,),
              Text(
                listData[i]['title'],
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0,color: Color.fromRGBO(233, 233, 233, 1))
          ),
        )
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('网格布局'),),
      body:Container(
        child: GridView.count(
          padding: EdgeInsets.all(10.0), //外部间距
          crossAxisSpacing: 20.0, // 副间距
          mainAxisSpacing: 10.0,  // 主间距
          crossAxisCount: 2, // 一列展示多少个
          childAspectRatio: 0.7,  // 宽/高度的比例
          children:_getData()
        ),
      )
    );
  }
}