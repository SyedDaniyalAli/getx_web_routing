import 'package:flutter/material.dart';
import 'package:getx_web_routing/utils/navigations/route_names.dart';
import 'package:hive/hive.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Authentication Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Press Sign button in to Signin"),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: Colors.green,
              child: const Text('Sign in'),
              onPressed: () {
                signIn();
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

void signIn() async {
  await Hive.box('box').put('signIn', true);
  RouteNames.goToHome();
}
