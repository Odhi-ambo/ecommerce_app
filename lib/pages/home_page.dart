import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/add_product_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FootWear Admin'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('Title'),
              subtitle: const Text('Price:100'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  print('delete');
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddProductPage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
