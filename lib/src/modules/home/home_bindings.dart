import 'package:get/get.dart';
import 'controller/home_controller.dart';
import '../../repositories/user_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
