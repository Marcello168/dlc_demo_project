import 'package:flutter/material.dart';
import './home_view_model.dart';
import '../home_page//test_page/test_page.dart';
import '../../General/CustomWidget/dlc_custom_router.dart';

class HomeView extends HomeViewModel {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Center(
      child: Column(
        children: <Widget>[
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          Image.asset('lib/Rescoure/defaultIcon//ic_jc_01@3x.png'),
          RaisedButton(
            onPressed: () {
              _count++;
              setState(() {});
            },
            child: Text("Add"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, CustomRoute(TestPage()));
            },
            child: Text("跳转"),
          ),
        ],
      ),
    );
  }
}
