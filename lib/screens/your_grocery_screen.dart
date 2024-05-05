import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class YourGrocery extends StatelessWidget {
  const YourGrocery({super.key, required this.grocery});

  final List<GroceryItem> grocery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Grocery'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          ListTile(
            iconColor: Colors.yellow,
            title: Text(grocery[index].name.toString()),
            trailing: Text(grocery[index].quantity.toString()),
          );
        },
      ),
    );
  }
}
