import 'dart:developer';

import 'dart:convert';
import 'dart:io';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Routers.dart';
import 'package:flutter_app/Temp/Second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //-----------------路由主要代码start
    final router = FluroRouter();
    Routers.configRouters(router);
    Application.router = router;
    print('Routers init');
    //-----------------路由主要代码end

    return Container(
      child: MaterialApp(
        title: 'fluro',
        //-----------------路由主要代码start
        onGenerateRoute: Application.router.generator,
        //-----------------路由主要代码end
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromARGB(255, 78, 79, 95),
        ),
        home: TempApp(),
      ),
    );
  }
}

class TempApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: _TempAppBodyView(context)
      ),
    );
  }
}


class _TempAppBodyView extends StatelessWidget {
  BuildContext pageContext;

  _TempAppBodyView(this.pageContext);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Router"),
        Text("首页"),
        new TextButton(
            child: Text('跳转'),
            onPressed: () {
              Application.router.navigateTo(pageContext, Routers.first_page);
            }
        )
      ],

    );
  }
}
