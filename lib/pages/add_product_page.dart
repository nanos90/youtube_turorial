import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_turorial/controller/home_controller.dart';
import 'package:youtube_turorial/widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Add New Product',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: _.productNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    label: Text('Product Name'),
                    hintText: 'Enter Your Product Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _.productDescriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    label: Text('Product Description'),
                    hintText: 'Enter Your Product Description',
                  ),
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _.productImageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    label: Text('Image Url'),
                    hintText: 'Enter Your Image Url',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _.productPriceController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    label: Text('Product Price'),
                    hintText: 'Enter Your Product Price',
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: DropDownBtn(
                        items: const ['Cat1', 'Cat2', 'Cat3'],
                        selectedItemText: _.category,
                        onSelected: (selectedValue) {
                          _.category = selectedValue ?? 'general';
                          _.update();
                        },
                      ),
                    ),
                    Flexible(
                      child: DropDownBtn(
                        items: const ['brand1', 'brand2'],
                        selectedItemText: _.brand,
                        onSelected: (selectedValue) {
                          _.brand = selectedValue ?? 'no brand';
                          _.update();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Offer Product ?'),
                DropDownBtn(
                  items: const ['true', 'false'],
                  selectedItemText: _.offer.toString(),
                  onSelected: (selectedValue) {
                    _.offer = bool.tryParse(selectedValue ?? 'false') ?? false;
                    _.update();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    _.addProduct();
                  },
                  child: const Text('Add Product'),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
