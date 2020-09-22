import 'package:News_app/models/CategoryModel.dart';
import 'package:flutter/cupertino.dart';

class Category extends ChangeNotifier {
  final List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'Entertainment',
        imgUrl:
            'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'Sports',
        imgUrl:
            'https://images.unsplash.com/photo-1543351611-58f69d7c1781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
    CategoryModel(
        categoryName: 'Agriculture',
        imgUrl:
            'https://images.unsplash.com/photo-1464226184884-fa280b87c399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'Politics',
        imgUrl:
            'https://images.unsplash.com/photo-1532375810709-75b1da00537c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80'),
    CategoryModel(
        categoryName: 'Corona',
        imgUrl:
            'https://images.unsplash.com/photo-1584127050037-746c151b9284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
  ];

  void getCategories() {
    notifyListeners();
  }
}
