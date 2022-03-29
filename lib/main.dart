import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_example/bindings/home_binding.dart';
import 'package:getx_example/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: "/home",
            page: () => const ListingScreen(),
            binding: HomeBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
