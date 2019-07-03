import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  _ListViewPageState createState() => _ListViewPageState();
}
// ListView无法直接再嵌套ListView
class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('列表'),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical, // 默认垂直
            padding: EdgeInsets.all(10),
            children: <Widget>[
              ListTile(
                enabled: false,
                leading: Image.network(
                    'http://e0.ifengimg.com/01/2019/0627/4CF4B5589818987A6F5DDC909AE5410E1462AC32_size112_w1200_h838.jpeg'),
                title: Text(
                  '双宋离婚',
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text('xinew'),
              ),
              ListTile(
                leading: Image.network(
                    'http://n.sinaimg.cn/ent/transform/66/w446h420/20190627/7ab0-hyzpvir6357461.jpg'),
                title: Text('范冰冰李晨分手'),
                subtitle: Text('xinew'),
                // 后面的位置
                trailing: Image.network(
                    'http://e0.ifengimg.com/01/2019/0627/4CF4B5589818987A6F5DDC909AE5410E1462AC32_size112_w1200_h838.jpeg'),
              ),
              Container(
                child: Text(
                  '图文列表',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                  'http://n.sinaimg.cn/ent/transform/66/w446h420/20190627/7ab0-hyzpvir6357461.jpg'),
              Container(
                child: Text(
                  '离婚了好',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Image.network(
                  'http://n.sinaimg.cn/ent/transform/66/w446h420/20190627/7ab0-hyzpvir6357461.jpg'),
              Container(
                child: Text(
                  '离婚了好',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Text('水平列表',style: TextStyle(fontSize: 18,),),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width:180.0,color: Colors.yellow,
                      child: ListView(
                        children: <Widget>[
                          Image.network('http://n.sinaimg.cn/ent/transform/66/w446h420/20190627/7ab0-hyzpvir6357461.jpg'),
                          Text('双宋离婚')
                        ],
                      ),
                    ),
                    Container(width:180.0,color: Colors.pink,),
                    Container(width:180.0,color: Colors.green,),
                    Container(width:180.0,color: Colors.red,),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
