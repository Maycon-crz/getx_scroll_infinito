import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/aplication/bindings/aplication_binding.dart';
import 'src/routes/route_name.dart';
import 'src/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ApplicationBinding(),
      initialRoute: RouteName.home,
      getPages: AppPages.pages,
    );
  }
}
