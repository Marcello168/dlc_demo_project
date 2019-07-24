import 'package:flutter/material.dart';
import './app_main_page_view_model.dart';
import './../home/home.dart';

class AppMainPageView extends AppMainPageViewModel {
  static int _tabIndex = 0;

  static const normalTextColor = Colors.red; //未选中颜色
  static const selectedTextColor = Colors.green; //选中颜色

  var appBarTitles = ['首页', '发现', '我的'];

  static var tabImages = [
    [
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png'),
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png')
    ],
    [
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png'),
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png')
    ],
    [
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png'),
      getTabImage('lib/Rescoure/defaultIcon/ic_jc_01@2x.png')
    ]
  ];

  /*
   * 存放的页面
   */
  var _pageList = [
    new Home(),
    new Home(),
    new Home(),
  ];

  /*
   *
   *  返回TabbarItem
   */
  List<BottomNavigationBarItem> renderTabbarItem() {
    var itemList = new List<BottomNavigationBarItem>(); //指定类型的数组
    for (var i = 0; i < appBarTitles.length; i++) {
      var item = new BottomNavigationBarItem(
          icon: getTabIcon(i), title: getTabTitle(i));
      itemList.add(item);
    }
    return itemList;
  }

  /*
   * 根据选择获得对应的normal或是press的icon
   */
  static Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: normalTextColor));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: selectedTextColor));
    }
  }

  /*
   * 根据image路径获取图片
   */
  static Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          children: _pageList,
          index: _tabIndex,
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: renderTabbarItem(),
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
