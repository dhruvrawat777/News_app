import 'package:News_app/views/CategoryLister.dart';
import 'package:flutter/material.dart';
import './NewsLister.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryLister(),
        NewsLister(),
      ],
    );
  }
}
