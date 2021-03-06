import 'package:get/get.dart';
import 'route_name.dart';
import '../modules/home/home_bindings.dart';
import '../modules/home/view/home_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      binding: HomeBindings(),
      page: () => HomePage(),
    ),
  ];
}
