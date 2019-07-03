import 'package:flutter/material.dart';

class Formdemo extends StatefulWidget {
  Formdemo({Key key}) : super(key: key);

  _FormdemoState createState() => _FormdemoState();
}

class _FormdemoState extends State<Formdemo> {
  @override
  String username;  // 用户名
  String info;      // 描述
  int sex =1;       // 性别
  List hobby=[      // 爱好
    {"checked":false,"item":'学习'},{"checked":false,"item":'写代码'},{"checked":true,"item":'谈恋爱'}
  ];
  void _sexChange(v){
    setState(() {
      this.sex = v;
    });
  }
  List<Widget> _getHobby(){
    List<Widget> templateList=[];
    for(var i = 0;i<hobby.length;i++){
      templateList.add(
        Row(
          children: <Widget>[
            Text('${this.hobby[i]['item']}:'),
            Checkbox(
              value:this.hobby[i]['checked'],
              onChanged: (v){
                setState(() {
                  this.hobby[i]['checked']=v;
                }); 
              },
            )
          ],
        )
      );
    }
    return templateList;
  }
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title:Text('学员信息录入系统'),),
         body:Container(
           padding: EdgeInsets.all(20),
           child: Column(
             children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                   hintText: '请输入用户信息'
                 ),
                 onChanged: (v){
                   setState(() {
                      this.username = v;
                   }); 
                 },
               ),
               SizedBox(height:20),
               Row(
                 children: <Widget>[
                   Text('男'),
                   Radio(
                     value:1 ,
                     onChanged: _sexChange,
                     groupValue: this.sex,
                   ),
                   SizedBox(width:20),
                   Text('女'),
                   Radio(
                     value:2 ,
                     onChanged: _sexChange,
                     groupValue: this.sex,
                   ),
                 ],
               ),
               SizedBox(height:20),
               Column(
                 children:this._getHobby(),
               ),
               SizedBox(height:20),
               TextField(
                 maxLines: 4,  // 多行
                 decoration: InputDecoration(
                   hintText: '请输入描述信息',
                   border: OutlineInputBorder()
                 ),
                 onChanged: (v){
                   this.info = v;
                 },
               ),
               SizedBox(height:20),
               Row(
                 children: <Widget>[
                   RaisedButton(
                        child: Text('提交数据'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: (){
                          print(this.username);
                          print(this.sex);
                          print(this.hobby);
                          print(this.info);                        
                        },
                    ),   
                 ],
               )
             ],
           ),
         )
       ),
    );
  }
}