import 'package:flutter/material.dart';
import 'package:youtube_turorial/widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              const TextField(
                decoration: InputDecoration(
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
              const TextField(
                decoration: InputDecoration(
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
              const TextField(
                decoration: InputDecoration(
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
              const TextField(
                decoration: InputDecoration(
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
                      selectedItemText: 'Categoory',
                      onSelected: (selectedValue) {},
                    ),
                  ),
                  Flexible(
                    child: DropDownBtn(
                      items: const ['brand1', 'brand2'],
                      selectedItemText: 'Brand',
                      onSelected: (selectedValue) {},
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
                selectedItemText: 'Offer ?',
                onSelected: (selectedValue) {},
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Add Product'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
