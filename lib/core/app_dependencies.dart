import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
