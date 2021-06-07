import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_practice/app/modules/intro/intro_store.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  final String title;
  const IntroPage({Key? key, this.title = 'IntroPage'}) : super(key: key);
  @override
  IntroPageState createState() => IntroPageState();
}
class IntroPageState extends State<IntroPage> {
  final IntroStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}