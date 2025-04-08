import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

//Essa classe utiliza um Mixin que é o ChangeNotifier
class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts;

  //retorna um clone da lista, para acabar nao alterando a lista original
  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}