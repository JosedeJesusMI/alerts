import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AvatarPage'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Container(
            child: Text('Soy la ventana avatar'),
          ),
        ),
      ),
    );
  }
}
