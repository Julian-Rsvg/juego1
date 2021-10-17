import 'package:flutter/material.dart';
import 'package:juego1/routes/routes.dart';
import 'componentes/pagina/suma_page.dart';

class ProcesoPage extends StatefulWidget {
  @override
  _ProcesoPageState createState() => _ProcesoPageState();

}

class _ProcesoPageState extends State<ProcesoPage> {

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:' Menu de temas',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context)=> SumaPage()
          );
      },
    );
  }
}