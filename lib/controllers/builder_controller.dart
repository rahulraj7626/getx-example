import 'package:get/get.dart';

//home controller class extends getxController define logics,and funtions here
class BuilderController extends GetxController {
  List list = [];
  //list variable,

//add item to list method
  void addList(item) {
    list.add(item);
    update(); //update changes
  }

//remove last item from list
  void removeList() {
    list.removeLast();
    update(); //update changes
  }

//remove item from specific position from the list
  void removeListatIndex(index) {
    list.removeAt(index);
    update(); //update changes
  }
}
