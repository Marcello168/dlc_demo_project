import 'package:dlc_flutter_project/General/Base/dlc_base_page/dlc_base_page_view.dart';
import 'package:flutter/material.dart';

class TestPageView extends DLCBasePageView {
  String appBarTitle = 'aaaaa';

  @override
  void didClickAppBarBack() {
    // TODO: implement didClickAppBarBack
    super.didClickAppBarBack();
    Navigator.pop(context);
  }
}
