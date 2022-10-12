import 'package:flutter/material.dart';
import 'package:simple_example_app_provider/model/item.dart';
import 'model/item_data.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, data, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data.size,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final Item item = data.items[index];
            return GestureDetector(
              onLongPress: () => data.removeItem(item),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Text(item.item[0]),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.item,
                        style: TextStyle(
                          decoration: item.completed ? TextDecoration.lineThrough : null,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Checkbox(
                        value: item.completed,
                        onChanged: (c) => data.toggleItem(item),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
