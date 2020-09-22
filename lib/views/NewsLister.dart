import 'package:News_app/Providers/News.dart';
import 'package:News_app/views/Article.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsLister extends StatefulWidget {
  @override
  _NewsListerState createState() => _NewsListerState();
}

class _NewsListerState extends State<NewsLister> {
  @override
  void initState() {
    // TODO: implement initState
    //.of<News>(context, listen: false).getNews();
    Future.delayed(Duration.zero).then((_) {
      Provider.of<News>(context, listen: false).getNews('');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<News>(context);
    final newslist = pro.news;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 230,
      child: newslist.length == 0
          ? Center(
              child: Text('None'),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/article', arguments: {
                      'description': newslist[index].description,
                      'imgUrl': newslist[index].imgUrl,
                      'title': newslist[index].title,
                      'content': newslist[index].content,
                    });

                    print('clicked');
                  },
                  child: Container(
                    width: 100,
                    height: 250,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueGrey,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                newslist[index].imgUrl,
                                //width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          //margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            newslist[index].title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.blue[300],
                              // backgroundColor: Colors.black45,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            newslist[index].description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.tealAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: newslist.length,
            ),
    );
  }
}
