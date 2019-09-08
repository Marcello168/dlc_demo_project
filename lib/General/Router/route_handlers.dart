/*
 * @Author: gongyonghui
 * @Date: 2019-09-08 13:59:21
 * @LastEditors: gongyonghui
 * @LastEditTime: 2019-09-08 15:19:25
 * @Description: 路由定义
 */

import 'package:dlc_flutter_project/Pages/test_page/test_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

// var rootHandler = Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   return HomeComponent();
// });

var testRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return TestPage();
});
