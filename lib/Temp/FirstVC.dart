import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Routers.dart';

class FirstVC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第一个页面',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter test'),
          ),
          body: backBodyView(context)
      ),
    );
  }
}

class backBodyView extends StatelessWidget {
  BuildContext pageContext;

  backBodyView(this.pageContext);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("first vc"),
        new TextButton(
            child: Text('返回'),
            onPressed: () {
              Application.router.pop(pageContext);
              // Navigator.of(pageContext).pop();
              // Navigator.pop(context);
            }
        ),
        new TextButton(
            child: Text('下一页'),
            onPressed: () {
              Application.router.navigateTo(context, Routers.second_page);
            }
        )
      ],

    );
  }
}
