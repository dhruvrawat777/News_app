import 'package:flutter/material.dart';

class NewsLister extends StatefulWidget {
  @override
  _NewsListerState createState() => _NewsListerState();
}

class _NewsListerState extends State<NewsLister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 230,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            width: 100,
            height: 200,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.yellow,
              ),
              child: Text(
                'hi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
