import 'package:get/get.dart';
import 'package:getx_example/controllers/builder_controller.dart';

import 'package:getx_example/controllers/home_controller.dart';

//dependancy injection class , this class called main route for accessing builder controller
class BuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BuilderController());
  }
}
