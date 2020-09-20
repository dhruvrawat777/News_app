import 'package:flutter/material.dart';

class NewsLister extends StatefulWidget {
  @override
  _NewsListerState createState() => _NewsListerState();
}

class _NewsListerState extends State<NewsLister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            width: 100,
            height: 200,
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              color: Colors.yellow,
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
