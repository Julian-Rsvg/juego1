import 'package:flutter/material.dart';
import 'package:juego1/componentes/pagina/home_page.dart';
import 'package:juego1/componentes/pagina/multiplicacion.dart';
import 'package:juego1/componentes/pagina/resta_page.dart';
import 'package:juego1/componentes/pagina/suma_page.dart';

Map<String, WidgetBuilder>getApplicationRoutes(){
  return <String, WidgetBuilder>{
        '/'  : (BuildContext context)=> HomePage(),
        'suma'  : (BuildContext context)=> SumaPage(),
        'resta'  : (BuildContext context)=> RestaPage(),
        'multiplicación'  : (BuildContext context)=> Multiplicacion(),
  };
}

