import 'dart:convert';

import 'package:News_app/models/NewsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class News extends ChangeNotifier {
  final _apiKey = 'da0e2b99feb94df2b9f64b7d3915afa2';
  final List<NewsModel> news = [
    NewsModel(
      description:
          'desccsddfadadsdsadadadsaddsadadsdasadsdfadadsdsaddfadadsdsadadadsaddsadadsdasadsadsdadadsaddsadadsdasadsadsdadsdasdaaaaaaaaaaaaaaaaaaaas',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
    NewsModel(
      description: 'desccsddfadadsds',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
    NewsModel(
      description: 'desccsddfadadsds',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
    NewsModel(
      description: 'desccsddfadadsds',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
    NewsModel(
      description: 'desccsddfadadsds',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
    NewsModel(
      description: 'desccsddfadadsds',
      title: 'newss',
      imgUrl:
          'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    ),
  ];

  Future<void> getNews() async {
    try {
      print('chala');
      final String url =
          'http://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=$_apiKey';
      final response = await http.get(url);
      var data = json.decode(response.body);
      if (data['status'] == 'ok') {
        data["articles"].forEach((article) {
          if (article['urlToImage'] != null && article['description'] != null) {
            news.add(NewsModel(
              description: article['description'],
              imgUrl: article['urlToImage'],
              title: article['title'],
            ));
          }
        });
        print('doneeee');
        notifyListeners();
      } else {}
    } catch (error) {
      throw (error);
    }
  }
}
