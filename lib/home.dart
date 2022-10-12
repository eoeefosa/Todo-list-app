import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_example_app_provider/item_list.dart';
import 'package:simple_example_app_provider/model/item.dart';
import 'package:simple_example_app_provider/model/item_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Provider Example'),
      ),
      body: SafeArea(
        child: Consumer<ItemData>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(height: 20),
                  // TODO: DECORATE textform field
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "Enter Item",
                    ),
                    controller: controller,
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {
                      value.addItem(Item(item: controller.text));
                    },
                    color: Colors.lightGreen,
                    child: const Text("Submit"),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Items List",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const ItemList(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
