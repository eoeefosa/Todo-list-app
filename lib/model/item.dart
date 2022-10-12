import "package:flutter/foundation.dart";

class Item {
  // fields
  final String item;
  bool completed;

  // constructor
  Item({required this.item, this.completed = false});

  // methods
  void toggle() {
    completed = !completed;
  }
}
