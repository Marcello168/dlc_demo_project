import 'package:flutter/material.dart';
import './test_page_view_model.dart';

class TestPageView extends TestPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('"fsafdsa"'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text('Just aaaa12121'),
        ),
      ),
    );
  }
}
