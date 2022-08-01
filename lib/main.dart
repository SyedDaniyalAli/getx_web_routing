import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';

import 'utils/navigations/route_names.dart';

void main() async {
  ///If you want to remove the leading hash (#) from the URL of your Flutter web app,
  ///you can simply call setPathUrlStrategy in the main function of your app:
  setPathUrlStrategy();

  await initialtizeHiveDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Web Routings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routingCallback: (routing) {
        isLogin().then((bool value) {
          if (value != true && routing!.current != RouteNames.auth) {
            RouteNames.goToAuth();
          }
        });
      },
      initialRoute: RouteNames.auth,
      getPages: RouteNames.pages,
    );
  }
}

Future<void> initialtizeHiveDB() async {
  await Hive.initFlutter(); //init Hive DB
  await Hive.openBox('box');
}

Future<bool> isLogin() async {
  return await Hive.box('box').get('signIn') ?? false;
}
