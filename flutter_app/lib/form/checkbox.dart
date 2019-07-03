import 'package:flutter/material.dart';

class ChecxboxDemo extends StatefulWidget {
  ChecxboxDemo({Key key}) : super(key: key);

  _ChecxboxDemoState createState() => _ChecxboxDemoState();
}

class _ChecxboxDemoState extends State<ChecxboxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('checkbox')),
         body:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            //  Checkbox(
            //    value:this.flag,
            //    onChanged: (v){
            //      setState(() {
            //        this.flag = v;
            //      });
            //    },
            //  )
            CheckboxListTile(
              value: this.flag, //value true或false
              onChanged: (v){
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'), //标题
              subtitle: Text('二级标题'),
            ),
            Divider(),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v){
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.home), // 设置icon
              activeColor: Colors.pink,  // 选中的颜色
            )
           ],
         )
       ),
    );
  }
}
