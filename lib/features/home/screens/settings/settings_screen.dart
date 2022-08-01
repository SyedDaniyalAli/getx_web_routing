import 'package:flutter/material.dart';
import 'package:getx_web_routing/utils/navigations/route_names.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Press Sign out button to SignOut"),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: Colors.red,
              child: const Text('Sign out'),
              onPressed: () {
                signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}

void signOut() async {
  await Hive.box('box').put('signIn', false);
  RouteNames.goToAuth();
}
