import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_turorial/controller/home_controller.dart';
import 'package:youtube_turorial/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Footware Admin'),
          ),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('title'),
                  subtitle: const Text('price : 100'),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete)),
                );
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => const AddProductPage());
              // Get.to(Page())보다 Get.to(() => Page())로 사용하는 것이
              // 메모리 관리차원에서 더 낫다고 한다.
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
