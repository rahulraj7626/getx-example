import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_example/bindings/builder_binding.dart';
import 'package:getx_example/bindings/home_binding.dart';
import 'package:getx_example/views/get_builder_home.dart';
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
        //define  routes
        //initialize all pages here with parameter route_name , classname , dependency class if availabe
        GetPage(
            name: "/homebuilder",
            page: () => const BuilderListingScreen(),
            binding: BuilderBinding()),
        GetPage(
            name: "/homeobx",
            page: () => const ListingScreen(),
            binding: HomeBinding()),
      ],
      //inital route that means first page when app open
      // change initial route "/homeobx" for Getx obx example
      // change initial route "/homebuilder" for Getx getbuilder example
      initialRoute: "/homebuilder",
    );
  }
}
