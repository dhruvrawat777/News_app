import 'package:News_app/models/CategoryModel.dart';
import 'package:flutter/cupertino.dart';

class Category extends ChangeNotifier {
  final List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'general',
        imgUrl:
            'https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    /*  CategoryModel(
        categoryName: 'entertainment',
        imgUrl:
            'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    */
    CategoryModel(
        categoryName: 'sports',
        imgUrl:
            'https://images.unsplash.com/photo-1543351611-58f69d7c1781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
    CategoryModel(
        categoryName: 'technology',
        imgUrl:
            'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
    CategoryModel(
        categoryName: 'health',
        imgUrl:
            'https://images.unsplash.com/photo-1584127050037-746c151b9284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
    CategoryModel(
        categoryName: 'business',
        imgUrl:
            'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
    CategoryModel(
        categoryName: 'science',
        imgUrl:
            'https://images.unsplash.com/photo-1517976487492-5750f3195933?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
  ];

  void getCategories() {
    notifyListeners();
  }
}
