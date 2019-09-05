import 'package:dlc_flutter_project/General/Base/dlc_base_page/dlc_base_page.dart';
import 'package:dlc_flutter_project/General/CustomWidget/dlc_custom_router.dart';
import 'package:dlc_flutter_project/Pages/test_page/test_page.dart';
import 'package:flutter/material.dart';
import './home_page_view_model.dart';
import 'package:dlc_flutter_project/General/Base/dlc_base_page/dlc_base_page_view.dart';

class HomePageView extends DLCBasePageView {
  int _count = 0;
  @override
  Color appBarContentColor = Colors.black;

  @override
  Widget renderView() {
    print('aaaa');
    return Center(
      child: Column(
        children: <Widget>[
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          Text('Just a Home placeholder $_count'),
          RaisedButton(
            onPressed: () {
              _count++;
              setState(() {});
            },
            child: Text("Add"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, CustomRoute((TestPage())));
            },
            child: Text("跳转"),
          ),
        ],
      ),
    );
  }
}
