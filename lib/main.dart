import 'package:News_app/Providers/Category.dart';
import 'package:News_app/Providers/News.dart';
import 'package:News_app/views/Article.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './views/HomePage.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /* loadJson() async {
    String data = await rootBundle.loadString('lib/secrets.json');
    final pro = Provider.of<News>(context, listen: false);
    var jsonResult = json.decode(data);
    //pro.setKey(jsonResult['api_key']);
    pro.keySet(jsonResult['api_key']);
    print(jsonResult['api_key']);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await loadJson();
    });
  }
 */
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
