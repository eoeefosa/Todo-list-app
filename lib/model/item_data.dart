import "dart:collection";
import "item.dart";
import "package:flutter/foundation.dart";

class ItemData extends ChangeNotifier {
  final List _items = <Item>[];
  UnmodifiableListView get items => UnmodifiableListView(_items);

  get size => _items.length;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void toggleItem(Item item) {
    item.toggle();
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
