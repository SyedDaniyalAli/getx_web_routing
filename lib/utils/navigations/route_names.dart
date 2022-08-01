import 'package:get/route_manager.dart';
import 'package:getx_web_routing/features/home/screens/auth/auth_screen.dart';
import 'package:getx_web_routing/features/home/screens/home/home_screen.dart';

import '../../features/home/screens/homesub/sub_home_screen.dart';
import '../../features/home/screens/settings/settings_screen.dart';

class RouteNames {
  static const String home = "/homescreen";
  static const String auth = "/authscreen";
  static const String subHome = "/subscreen";
  static const String settings = "/settings";

  static final List<GetPage> _pages = [
    GetPage(name: home, page: () => const HomeScreen(), children: [
      GetPage(name: subHome, page: () => const HomeSubScreen()),
    ]),
    GetPage(name: auth, page: () => const AuthScreen()),
    GetPage(name: settings, page: () => const Settings()),
  ];

  static List<GetPage> get pages => [..._pages];

  static void homeToSubHome() {
    Get.toNamed("$home$subHome");
  }

  static void goToSettings() {
    Get.toNamed(settings);
  }

  static void goToHome() {
    Get.toNamed(home);
  }

  static void goToAuth() {
    Get.offNamedUntil(auth, (route) => false);
  }
}
