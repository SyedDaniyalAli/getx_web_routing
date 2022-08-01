import 'package:flutter/material.dart';
import 'package:getx_web_routing/utils/navigations/route_names.dart';

class HomeSubScreen extends StatelessWidget {
  const HomeSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Home'),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          child: const Text('Settings'),
          onPressed: () {
            RouteNames.goToSettings();
          },
        ),
      ),
    );
  }
}
