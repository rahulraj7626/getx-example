import 'package:get/get.dart';

class HomeController extends GetxController {
  var list = [].obs;

  void addList(item) {
    list.add(item);
  }

  void removeList() {
    list.removeLast();
  }

  void removeListatIndex(index) {
    list.removeAt(index);
  }
}
