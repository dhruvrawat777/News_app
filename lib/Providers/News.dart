import 'dart:convert';

import 'package:News_app/models/NewsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

class News extends ChangeNotifier {
  final _apiKey = '';
  final List<NewsModel> news = [
    /* NewsModel(
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
    ), */
  ];

  Future<void> getNews(String categoryName) async {
    try {
      print('chala');
      String _url;
      news.clear();
      if (categoryName == '') {
        _url =
            'https://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=popularity&language=en&apiKey=$_apiKey';
      } else {
        _url =
            'https://newsapi.org/v2/top-headlines?q=$categoryName&sortBy=popularity&language=en&apiKey=$_apiKey';
      }
      final response = await http.get(_url);
      var data = json.decode(response.body);
      if (data['status'] == 'ok') {
        data["articles"].forEach((article) {
          if (article['urlToImage'] != null &&
              article['description'] != null &&
              article['content'] != null) {
            news.add(NewsModel(
              description: article['description'],
              imgUrl: article['urlToImage'],
              title: article['title'],
              content: article['content'],
            ));
          }
        });
        print('doneeee');
        notifyListeners();
      } else {
        print('error');
      }
    } catch (error) {
      throw (error);
    }
  }
}
