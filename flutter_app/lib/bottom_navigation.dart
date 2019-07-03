import 'package:flutter/material.dart';
import 'tabber/home_screen.dart';
import 'tabber/list_screen.dart';
import 'tabber/my_screen.dart';
import 'tabber/shop_screen.dart';

class BottomNavigationWidget extends StatefulWidget{
  _BottomNavigationWidgetSatate createState() => _BottomNavigationWidgetSatate();
}
class _BottomNavigationWidgetSatate extends State{
  int CreateIndex = 0;
  final bottomColor = Colors.blueGrey;
  List<Widget> tabList = List();
  @override
  void initState(){
    tabList
      ..add(HomeScreen())
      ..add(MyScreen())
      ..add(ShopScreen())
      ..add(ListScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:tabList[CreateIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home,color: bottomColor,),title: Text('Home',style: TextStyle(color: bottomColor))),
          BottomNavigationBarItem(icon:Icon(Icons.usb,color: bottomColor,),title: Text('List',style: TextStyle(color: bottomColor))),
          BottomNavigationBarItem(icon:Icon(Icons.star,color: bottomColor,),title: Text('My',style: TextStyle(color: bottomColor))),
          BottomNavigationBarItem(icon:Icon(Icons.list,color: bottomColor,),title: Text('Shop',style: TextStyle(color: bottomColor))),
        ],
        currentIndex: CreateIndex,
        // type:BottomNavigationBarType.fixed,  // 固定在底部
        fixedColor: Colors.blue,
        onTap: _onItemTaped,
      ),
    );
  }
  void _onItemTaped(int index){
    setState(() {
      CreateIndex = index;
    });
  }
}