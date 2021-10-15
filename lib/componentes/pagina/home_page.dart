import 'package:flutter/material.dart';
import 'package:juego1/componentes/providers/menu_provider.dart';
import 'package:juego1/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de temas'),
      ),
      body: _Lista(),
    );
  }

  Widget _Lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        
        return ListView(
          children: _ListaItems(snapshot.data, context),
        );

      },
    );

  
  }

  List<Widget> _ListaItems(List<dynamic>data, BuildContext context) {
    
    final List<Widget> opciones=[];

    data.forEach((opt) { 

      final widgetTem = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue,),
        onTap: (){
          /*final route = MaterialPageRoute(
            builder:(context)=>//poner la pagina( )
          );*/

          //Navigator.push(context, route);

        }
      );
      
      opciones..add(widgetTem)
              ..add(Divider());

    });
    return opciones;

  }
}
