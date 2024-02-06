import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_turorial/model/product/product.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productImageController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();

  String category = 'Category';
  String brand = 'Brand';
  bool offer = false;

  @override
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct() {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: productNameController.text,
        category: category,
        description: productDescriptionController.text,
        price: double.tryParse(productPriceController.text),
        brand: brand,
        image: productImageController.text,
        offer: offer,
      );
      final productJson = product.toJson();
      doc.set(productJson);
      Get.snackbar('Success', 'Added Product', colorText: Colors.green);
    } on Exception catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
    }
  }
}
