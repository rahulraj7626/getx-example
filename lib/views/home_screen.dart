import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_example/controllers/home_controller.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({Key? key}) : super(key: key);

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  TextEditingController controller = TextEditingController();
  final homeController = Get.find<HomeController>();
  void valfn() {
    homeController.addList(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Getx - Example\nAdd , Remove from list",
                  textAlign: TextAlign.center,
                  style: style(22, Colors.blue, FontWeight.w600)),
            ),
            const SizedBox(
              height: 40,
            ),
            textField(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: valfn,
                    child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: 100,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.blueAccent),
                        child: Text(
                          "Add",
                          style: style(16, Colors.white, FontWeight.w600),
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => homeController.removeList(),
                    child: Container(
                        alignment: Alignment.center,
                        height: 48,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.blueAccent),
                        child: Text("Remove",
                            style: style(16, Colors.white, FontWeight.w600))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Obx(
              () => ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: homeController.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        title: Text(homeController.list[index],
                            style: style(18, Colors.black54, FontWeight.w700)),
                        trailing: GestureDetector(
                          onTap: () => homeController.removeListatIndex(index),
                          child: const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    );
                  }),
            )),
          ]),
        ),
      ),
    );
  }

  Widget textField() {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.black26,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: "Enter something",
        hintStyle: const TextStyle(
            fontSize: 14, color: Colors.black38, fontWeight: FontWeight.w400),
      ),
    );
  }
}

TextStyle style(double size, color, FontWeight weight) {
  return TextStyle(
    fontSize: size,
    color: color,
    fontWeight: weight,
  );
}
