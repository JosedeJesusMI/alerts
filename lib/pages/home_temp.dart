import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/providers/menu_provider.dart';
import 'package:flutter_application_widgets/utils/icono_string_util.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes widgets'),
          backgroundColor: Colors.deepPurple,
        ),
        body: _lista(context)

        // children: _crearItems(context),
        );
  }
}

Widget _lista(BuildContext context) {
  return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('ERROR ${snapshot.error.toString()}'));
        }
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      });
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opcioness = [];
  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(
        Icons.keyboard_arrow_right_sharp,
        color: Colors.blue,
      ),
      onTap: () {
        print(opt['ruta']);
        Navigator.of(context).pushNamed(opt['ruta']);
      },
    );
    opcioness..add(widgetTemp)..add(Divider());
  });
  return opcioness;
}

Widget _buildPopUpDialog(BuildContext context, String opt) {
  return new AlertDialog(
    title: Text('Me diste click $opt'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: Text('cerrar'),
        )
      ],
    ),
  );
}
