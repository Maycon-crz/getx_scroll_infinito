import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recicldarte"),
        actions: [
          PopupMenuButton(
            initialValue: controller.limit,
            onSelected: (value) => controller.changePaginationFilter(int value),
            itemBuilder: (context) {
              return [
                CheckedPopupMenuItem(
                  value: 15,
                  checked: controller.limit == 15,
                  child: Text('15 por página'),
                ),
                CheckedPopupMenuItem(
                  value: 20,
                  checked: controller.limit == 20,
                  child: Text('20 por página'),
                ),
                CheckedPopupMenuItem(
                  value: 50,
                  checked: controller.limit == 50,
                  child: Text('50 por página'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
