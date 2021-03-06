import 'package:flutter/material.dart';
import 'package:flutterapp/config/index.dart';
import 'package:flutterapp/widget/TextFix.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFix(
          title: 'สำรวจ',
          sizefont: sizeFontHeader,
        ),
      ),
    );
  }
}
