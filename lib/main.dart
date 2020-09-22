import 'package:News_app/Providers/Category.dart';
import 'package:News_app/Providers/News.dart';
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
        home: Scaffold(
          appBar: AppBar(
            title: Text("News"),
            centerTitle: true,
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
