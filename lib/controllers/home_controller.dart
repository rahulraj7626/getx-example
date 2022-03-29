import 'package:get/get.dart';

//home controller class extends getxController define logics,and funtions here
class HomeController extends GetxController {
  var list = []
      .obs; //list is a variable with type List,list observable with keyword .obs,
  //list observe every changes entire the application

//add item to list method
  void addList(item) {
    list.add(item);
  }

//remove last item from list
  void removeList() {
    list.removeLast();
  }

//remove item from specific position from the list
  void removeListatIndex(index) {
    list.removeAt(index);
  }
}
