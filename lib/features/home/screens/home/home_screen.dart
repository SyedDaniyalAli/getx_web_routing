import 'package:flutter/material.dart';
import 'package:getx_web_routing/utils/navigations/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: MaterialButton(
          child: const Text('Home'),
          onPressed: () {
            RouteNames.homeToSubHome();
          },
        ),
      ),
    );
  }
}
