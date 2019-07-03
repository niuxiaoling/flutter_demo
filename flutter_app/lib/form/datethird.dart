import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class Datethird extends StatefulWidget {
  Datethird({Key key}) : super(key: key);

  _DatethirdState createState() => _DatethirdState();
}

class _DatethirdState extends State<Datethird> {
  DateTime _nowDate = DateTime.now();
  // 方法1用自带的futurn函数代表promise,有then
  // _showDatePicker(){
  //   showDatePicker(  //Future 函数代表异步
  //     context:context,
  //     initialDate:_nowDate,
  //     firstDate:DateTime(1980),
  //     lastDate:DateTime(2100)
  //   ).then((result){
  //     print(result);
  //   });
  // }
  // 方法2 用async 和await
  _showDatePicker() async {
    var result = await showDatePicker(
        //Future 函数代表异步
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100),
        locale: Locale('zh')  
    );
    setState(() {
      if(result !=null){
         _nowDate = result; //await等待异步好
      }
    });
  }
  var _timeDay = TimeOfDay(hour: 12,minute: 10);
  _showTimePicker() async{
    var result = await showTimePicker(
      context: context,
      initialTime:_timeDay, 
    );
    setState(() {
      if(result!=null){
        _timeDay = result;
      }
    });
  }
  @override
  void initState() {
    super.initState();
    print(formatDate(this._nowDate,[yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('第三方日期控件')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _showDatePicker,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _showTimePicker,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${_timeDay.format(context)}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
