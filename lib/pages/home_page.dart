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
              itemCount: _.products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_.products[index].name ?? ''),
                  subtitle: Text((_.products[index].price ?? 0).toString()),
                  trailing: IconButton(
                      onPressed: () {
                        _.deleteProduct(_.products[index].id!);
                      },
                      icon: const Icon(Icons.delete)),
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
