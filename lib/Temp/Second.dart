import 'dart:developer';

import 'package:flutter/material.dart';

import '../Routers.dart';

class SecondVC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第二个页面',
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
        Text("second vc"),
        new TextButton(
          child: Text('返回'),
          onPressed: () {
            Application.router.pop(pageContext);
            // Navigator.of(pageContext).pop();
            // Navigator.pop(context);
          }
        )
      ],

    );
  }
}
