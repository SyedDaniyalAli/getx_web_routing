import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_web_routing/utils/navigations/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? params = Get.parameters['name'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (params != null) Text("Hi $params"),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              child: const Text('Go to Sub Home'),
              onPressed: () {
                RouteNames.homeToSubHome();
              },
            ),
          ],
        ),
      ),
    );
  }
}
