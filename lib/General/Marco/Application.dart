/*
 * @Author: gongyonghui
 * @Date: 2019-09-08 13:51:36
 * @LastEditors: gongyonghui
 * @LastEditTime: 2019-09-08 16:03:05
 * @Description: file content
 */

/**
 * 全局应用
 * Create by Songlcy
 */
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class Application {
  static Router router;
  static navigateTo(
      {@required BuildContext context,
      @required String route,
      transition = TransitionType.cupertino}) {
    router.navigateTo(context, route, transition: transition);
  }
}
