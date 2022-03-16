import 'package:get/get.dart';
import 'route_name.dart';
import '../views/pages/home_page.dart';
import '../aplication/bindings/aplication_binding.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      binding: ApplicationBinding(),
      page: () => HomePage(),
    ),
  ];
}
