import 'package:flutter/material.dart';
import 'package:flutter_app/routers/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // 引入国际化的库

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '小玲',
      theme: ThemeData.light(),
      // home:BottomNavigationWidget(),
      initialRoute: '/', //初始化加载哪个路由
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh','CN'),  // china
        const Locale('en', 'US'), // English 
        const Locale('he', 'IL'), // Hebrew
      ],
      debugShowCheckedModeBanner: false,  // 去掉debug图标
    );
  }
}

