import 'package:get/get.dart';
import 'route_name.dart';
import '../views/pages/home_page.dart';
import '../bindings/home_binding.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      binding: HomeBinding(),
      page: () => HomePage(),
    ),
  ];
}
