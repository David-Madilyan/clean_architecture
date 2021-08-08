
import 'package:get/get_navigation/src/routes/get_route.dart';
import '/common/routes.dart';
import '/screens/intro/intro_view.dart';

class Pages {
  static var list = [
    GetPage(
      name: Routes.INTRO,
      page: () => IntroPage(),
    ),
  ];
}
