
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SumaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma pagina'),
      ),
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(1, 98, 188, 1.0),
                Color.fromRGBO(45, 142, 172, 1.0),
              ])),
        ));

    return Stack(
      children: <Widget>[gradiente, Positioned(child: cajaRosa, top: -100.0)],
    );
  }

  Widget _titulos() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Buena suerte',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBtnRedondo(Colors.green.shade500, Icons.ad_units_sharp, 'Nivel 1'),
            _crearBtnRedondo(Colors.green.shade600, Icons.ad_units_sharp, 'Nivel 2'),
          ],
        ),
        TableRow(
          children: [
            _crearBtnRedondo(Colors.green.shade700, Icons.ad_units_sharp, 'Nivel 3'),
            _crearBtnRedondo(Colors.green.shade800, Icons.ad_units_sharp, 'Nivel 4'),
          ],
        ),
        TableRow(
          children: [
            _crearBtnRedondo(Colors.yellow.shade500, Icons.ad_units_sharp, 'Nivel 5'),
            _crearBtnRedondo(Colors.yellow.shade600, Icons.ad_units_sharp, 'Nivel 6'),
          ],
        ),
        TableRow(
          children: [
            _crearBtnRedondo(Colors.yellow.shade700, Icons.ad_units_sharp, 'Nivel 7'),
            _crearBtnRedondo(Colors.yellow.shade800, Icons.ad_units_sharp, 'Nivel 8'),
          ],
        ),
        TableRow(
          children: [
            _crearBtnRedondo(Colors.red.shade300, Icons.ad_units_sharp, 'Nivel 9'),
            _crearBtnRedondo(Colors.red, Icons.ad_units_sharp, 'Nivel 10'),
          ],
        ),
      ],
    );
  }

  Widget _crearBtnRedondo(Color color, IconData icono, String texto) {

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX:0.3,sigmaY:0.3),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5.0),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(
                Icons.swap_calls,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Text(
              texto,
              style: TextStyle(color: color),
            ),
            SizedBox(height: 5.0),
            Container(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: Colors.indigoAccent,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'IR AL NIVEL',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                
              },
            ),
          ),
          ],
        ),
      ),
    );
  }




}
