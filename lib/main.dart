import 'package:dlc_flutter_project/General/Marco/Application.dart';
import 'package:dlc_flutter_project/General/Router/routes.dart' as prefix0;
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:dlc_flutter_project/Pages/login_page/login_page.dart';
import 'package:dlc_flutter_project/Pages/app_main_page/app_main_page.dart';
import 'package:dlc_flutter_project/General/Router/routes.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  dynamic subscription;

  @override
  void initState() {
    super.initState();
    final Router router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
      ),
      home: AppMainPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
