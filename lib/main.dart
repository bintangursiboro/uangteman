import 'package:flutter/material.dart';
import 'package:uangteman/contact_page/contact_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uang Teman Challenge',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uang Teman Challenge'),
        ),
        body: ContactPage(),
      ),
    );
  }
}
