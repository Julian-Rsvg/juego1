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
      backgroundColor: Colors.teal.shade600 ,
      body:Stack(
        children: <Widget>[
          Opacity(
          opacity: 0.8,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: FondoP1(),
            ),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: FondoP2(),
            ),
          ),
        ),
          _Lista(),
        ],
      ), 
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

  List<Widget> _ListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    /*if (data == null) {
      return [];
    }*/

    data.forEach((opt) {
      final widgetTem = ListTile(
          title: Text(opt['texto'],),
          leading: getIcon(opt['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
          });

      opciones
        ..add(widgetTem)
        ..add(Divider(
          color: Colors.black,
          height: 10.0,
        ));
    });
    return opciones;
  }
}


class FondoP1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void curva1(Canvas canvas, Size size) {
    final paint = Paint();

    //paint.color = Color(0xfffd1400);
    paint.color = Color(0xFF0000FF);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.0;

    final path = new Path();

    /*
    (0,0)-(0,size.heigth)-(size.width,size.heigth)-(size.width,0)
     */

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.17,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.27, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 0.9); //salto del pincel o lapiz
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.88, 0, size.height * 0.9);

    canvas.drawPath(path, paint); //esto es lo que permite que se dibuje todo
  }
}

class FondoP2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  //
  void curva1(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xffffd1400);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.0;

    final path = new Path();

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.25, size.width, size.height * 0.25);

    path.moveTo(0, size.height * 0.9);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.47);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, 0, size.height * 0.9);

    canvas.drawPath(path, paint);
  }
}
