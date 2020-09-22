import 'package:News_app/Providers/Category.dart';
import 'package:News_app/Providers/News.dart';
import 'package:News_app/views/Article.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './views/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Category>(
          create: (ctx) => Category(),
        ),
        ChangeNotifierProvider<News>(
          create: (ctx) => News(),
        )
      ],
      child: MaterialApp(
        title: "News",
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/article': (context) => Article(),
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}
