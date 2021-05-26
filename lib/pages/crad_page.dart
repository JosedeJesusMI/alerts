import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CardPage'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            child: Text('Soy la pagina de tarjetas'),
          ),
        ),
      ),
    );
  }
}
