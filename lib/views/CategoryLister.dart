import 'package:News_app/Providers/Category.dart';
import 'package:News_app/Providers/News.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../Providers/Category.dart';

class CategoryLister extends StatefulWidget {
  @override
  _CategoryListerState createState() => _CategoryListerState();
}

class _CategoryListerState extends State<CategoryLister> {
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<Category>(context);
    final categorylist = pro.categories;
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        /*  separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            color: Colors.white,
          );
        }, */
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            width: 150,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: () {
                print('hi');
                Provider.of<News>(context, listen: false)
                    .getNews(categorylist[index].categoryName);
              },
              child: Stack(
                children: [
                  //Text(categorylist[index].imgUrl),
                  //fit: BoxFit.contain,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      categorylist[index].imgUrl,
                      width: 150,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      // width: double.maxFinite,
                      // color: Colors.black45,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(5),
                      child: Text(
                        categorylist[index].categoryName,
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.black38,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: categorylist.length,
      ),
    );
  }
}
