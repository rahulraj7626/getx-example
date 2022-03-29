import 'package:get/get.dart';

import 'package:getx_example/controllers/home_controller.dart';

//dependancy injection class , this class called main route for accessing home controller
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
