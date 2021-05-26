import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String opt;
  Info(this.opt);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hola ' + opt),
          ),
        ),
      ),
    );
  }
}
