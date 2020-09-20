import 'package:News_app/models/CategoryModel.dart';
import 'package:flutter/cupertino.dart';

class Category extends ChangeNotifier {
  final List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'hi',
        imgUrl:
            'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'new',
        imgUrl:
            'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'hia',
        imgUrl:
            'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'hsdi',
        imgUrl:
            'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'hsdai',
        imgUrl:
            'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
  ];

  void getCategories() {
    notifyListeners();
  }
}
