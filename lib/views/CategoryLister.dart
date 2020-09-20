import 'package:News_app/Providers/Category.dart';
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
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            height: 100,
            child: Card(
              child: Text(categorylist[index].categoryName),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
