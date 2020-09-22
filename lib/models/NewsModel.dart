import 'package:flutter/cupertino.dart';

class NewsModel {
  String imgUrl;
  String title;
  String description;
  String content;

  NewsModel(
      {@required this.imgUrl,
      @required this.title,
      @required this.description,
      @required this.content});
}
