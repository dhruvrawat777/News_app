import 'package:News_app/models/CategoryModel.dart';
import 'package:flutter/cupertino.dart';

class Category extends ChangeNotifier {
  final List<CategoryModel> categories = [
    CategoryModel(categoryName: 'hi', imgUrl: 'rand'),
    CategoryModel(categoryName: 'new', imgUrl: 'newww'),
    CategoryModel(categoryName: 'hia', imgUrl: 'rand'),
    CategoryModel(categoryName: 'hsdi', imgUrl: 'rand'),
    CategoryModel(categoryName: 'hsdai', imgUrl: 'rand'),
  ];

  void getCategories() {
    notifyListeners();
  }
}
