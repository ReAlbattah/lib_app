import 'package:get/get.dart';
import 'package:lib_app/logic/controller/setting_controller.dart';
import 'package:lib_app/logic/controller/auth_controller.dart';



class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());

  }
}