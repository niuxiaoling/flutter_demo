import 'package:flutter/material.dart';
import '../bottom_navigation.dart';
import '../form/radio.dart';
import '../form/checkbox.dart';
import '../form/login.dart';
import '../form/formDemo.dart';
import '../form/datetime.dart';
import '../form/dateflutter.dart';
import '../form/datethird.dart';
import '../list/listview.dart';
import '../list/builderListview.dart';
import '../list/girdview.dart';
import '../list/card.dart';
import '../list/wrap.dart';

// 配置路由
final routers={
  '/':(context) => BottomNavigationWidget(),
  '/radio':(context,{arguments})=>RadioDemo(arguments:arguments),
  '/checkbox':(context)=>ChecxboxDemo(),
  '/login':(context) => Login(),
  '/form':(context) => Formdemo(),
  '/date':(context) => Datetime(),
  '/dateflutter':(context) => Dateflutter(),
  '/datethird':(context) => Datethird(),
  '/listview':(context)=>ListViewPage(),
  '/builderlistview':(context)=>BuildListview(),
  '/gridview':(context)=>GridViewPage(),
  '/cardview':(context)=>CardPage(),
  '/wrap':(context)=>WrapPage()
};
// 固定写法，处理路由传参
final onGenerateRoute = (RouteSettings settings){
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if(pageContentBuilder !=null){
    if(settings.arguments !=null){
      final Route route = MaterialPageRoute(
        builder: (context)=> pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    }
    else{
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};
