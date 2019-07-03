import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  Map arguments;
  RadioDemo({Key key,this.arguments}) : super(key: key);

  _RadioDemoState createState() => _RadioDemoState(arguments:this.arguments);
}

class _RadioDemoState extends State<RadioDemo> {
  @override
  Map arguments;
  _RadioDemoState({this.arguments});
  int sex = 1;
  int age = 1;
  bool flag= true;
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('radio'),),
         body:Container(
           padding: EdgeInsets.only(left: 10),
           child: Column(
             children: <Widget>[
               Text('接受的参数：${this.arguments['id']}'),
               Row(
                 children: <Widget>[
                   Text('男'),
                   Radio(
                     value:1,
                     onChanged: (v){
                       setState(() {
                         this.sex = v;
                       });
                     },
                     groupValue: this.sex,  // 根据groupValue判断是否是同一个radio组
                   ),
                   SizedBox(width: 20,),
                   Text('女'),
                   Radio(
                     value:2,
                     onChanged: (v){
                       setState(() {
                         this.sex = v;
                       });
                     },
                     groupValue: this.sex,
                   ),
                   SizedBox(height: 20,),
                   
                 ],
               ),
              Row(
                     children: <Widget>[
                       Text('选中的值:${this.sex==1?'男':'女'}')
                     ],
                   ),
              SizedBox(height: 20,),
              RadioListTile(
                value:1,
                onChanged: (v){
                  setState(() {
                    this.age = v;
                  });
                },
                groupValue:this.age ,  // 必填，单个不成立
                title: Text('选中'),
                subtitle: Text('被选中'),
                secondary: Icon(Icons.help),
              ),
              RadioListTile(
                  value:2,
                  onChanged: (v){
                    setState(() {
                      this.age = v;
                    });
                  },
                  groupValue: this.age,
                  title: Text('选中'),
                  subtitle: Text('被选中'),
                  secondary: Icon(Icons.help),
                ),
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    Text('${this.flag==true?'开':'关'}'),
                    Switch(
                      value: this.flag,
                      onChanged: (v){
                        setState(() {
                          this.flag= v;
                        });
                      },
                    )
                  ],
                )
                
             ],
            
           ),
         )
       ),
    );
  }
}


