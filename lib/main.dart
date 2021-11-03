import 'package:flutter/material.dart';
import 'package:juego1/directorio/login/bloc/provider.dart';

import 'package:juego1/directorio/login/login2.dart';
import 'login.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
      title: 'MathThink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'login2',
      routes:{
        'login2'  : (BuildContext context)=> Login2(),
      }
      /* home: FondoInicio(), */
      ),
    );

  }
}

/* class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MathThink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FondoInicio(),
    );
  }
} */
