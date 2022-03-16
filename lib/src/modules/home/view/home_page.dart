import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
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
            onSelected: (int value) => controller.changePaginationFilter(value),
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
      body: Obx(
        () => LazyLoadScrollView(
          onEndOfPage: () => controller.nextPage(),
          isloading: controller.lastPage,
          child: ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              final user = controller.users[index];
              return ListTile(leading: Text(user.id), title: Text(user.name), subtitle: Text(user.username));
            },
          ),
        ),
      ),
    );
  }
}
