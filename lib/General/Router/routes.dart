/*
 * @Author: gongyonghui
 * @Date: 2019-09-08 13:58:32
 * @LastEditors: gongyonghui
 * @LastEditTime: 2019-09-08 15:18:36
 * @Description: file content
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";
  static String testPage = "/testpage";
  static void configureRoutes(Router router) {
    router.define(testPage, handler: testRouteHandler);
    // router.define(root, handler: rootHandler);

    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
  }
}
