
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:health_connect/common/routes.dart';
import 'package:health_connect/screens/intro/intro_view.dart';

class Pages {
  static var list = [
    GetPage(
      name: Routes.INTRO,
      page: () => IntroPage(),
    ),
  ];
}