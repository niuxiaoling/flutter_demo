import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('流式布局')),
      body:Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10, // 水平间距
          runSpacing:10 , // 垂直间距
          // alignment: WrapAlignment.start,  //水平对齐方式
          runAlignment: WrapAlignment.start,  // 垂直对齐方式
          children: <Widget>[
            Mybutton('第一季'),Mybutton('第二季无附件为'),Mybutton('第三季服务费'),Mybutton('第四服务范围服务费季'),Mybutton('第五季')
          ],
        ),
      )
    );
  }
}

class Mybutton extends StatelessWidget{
  final String text;
  Mybutton(this.text,{Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){},
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
    );
  }
}