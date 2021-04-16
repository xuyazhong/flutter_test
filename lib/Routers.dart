import 'dart:ffi';
import 'package:flutter/material.dart' hide Router, Page;
import 'package:flutter/cupertino.dart' hide Router, Page;

import 'package:flutter_app/HomePage/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/Temp/FirstVC.dart';
import 'package:flutter_app/Temp/Second.dart';
import 'First/page.dart';
import 'Second/page.dart';
import 'package:fluro/fluro.dart';


Handler SecondVCHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SecondVC();
  },
);

Handler FirstVCHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FirstVC();
  },
);


class Application {

  static FluroRouter router;

}

class Routers {
  Routers._();

  Routers() {
    print('### Routers init');
  }

  static final first_page = '/First';
  static final second_page = '/Second';

  // static final router = FluroRouter();
  static void configRouters(FluroRouter router) {
    // final pages = <String, Page<Object, dynamic>> {
    //   FirstPagePage.routePath: FirstPagePage(),
    //   SecondPagePage.routePath: SecondPagePage(),
    //   HomePagePage.routePath: HomePagePage(),
    // };

    // final AbstractRoutes _pageRoutes = PageRoutes(pages: pages);
    //
    // pages.forEach((key, value) {
    //   var handler = Handler(handlerFunc:
    //       (BuildContext context, Map<String, List<String>> params) {
    //     _currentContext = context;
    //     return _pageRoutes.buildPage(key, params);
    //   });
    //
    //   router.define(key, handler: handler);
    // });
    // pages.forEach((key, value) {
    //   var handelr = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    //     return _
    //   });
    // });

    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        // ignore: missing_return
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
        print('找不到路由，404');
        return FirstVC();
      },
    );
    router.define(first_page, handler: FirstVCHanderl);
    router.define(second_page, handler: SecondVCHanderl);
  }

}