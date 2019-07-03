import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  var username = TextEditingController(); // 初始化时给表单赋值
  var password;
  void initState(){
    super.initState();
    username.text= '用户名';
  }
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title:Text('表单演示')),
         body: Padding(
           padding: EdgeInsets.all(20),
           child: Column(
             children: <Widget>[
               TextField(
                 onChanged: (value){
                   setState(() {
                     username.text = value;
                   });
                 },
                 decoration: InputDecoration(
                   hintText: '请输入',
                 ),
                 controller: username,  //控制器显示初始值
               ),
               SizedBox(height: 20,),
               TextField(
                 obscureText: true,
                 onChanged: (value){
                   setState(() {
                     password = value;
                   });
                 },
                 decoration: InputDecoration(
                   hintText: '请输入密码',
                 )
               ),
               SizedBox(height: 20,),
               Container(
                 width:double.infinity,  // 无穷宽
                 child: RaisedButton(
                  child: Text('提交'),
                  onPressed: (){
                    print(password);
                    print(username.text);
                  },
                  color: Colors.blue,
                  textColor: Colors.white
                ),
               )
               
             ],
           )
         ),
       )
    );
  }
}
// 样式部分
class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
             children: <Widget>[
               TextField(),
               SizedBox(height: 20,),
               TextField(
                 decoration: InputDecoration(
                   hintText: "请输入搜素的内容",
                   border: OutlineInputBorder()
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 maxLines: 4,  //多行
                 decoration: InputDecoration(
                   hintText: "请输入搜素的内容",
                   border: OutlineInputBorder()
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 obscureText: true,  // 密码框
                 decoration: InputDecoration(
                   icon: Icon(Icons.people),  //添加icon
                   hintText: "请输入密码",  //placeholeder
                   border: OutlineInputBorder(),
                   labelText: '密码框'  // 添加label边框效果
                 ),
               )
             ],
           ),
    );
  }
}