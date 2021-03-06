import 'package:flutter/material.dart';
import 'package:juego1/componentes/providers/db_provider.dart';
import 'package:juego1/proceso.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class FondoInicio extends StatefulWidget {
  @override
  _FondoInicioState createState() => _FondoInicioState();
}

class _FondoInicioState extends State<FondoInicio> {
  bool mystate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MathThink'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.8,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: CustomPaint(
                  painter: FondoPaint1(),
                ),
              ),
            ),
            Opacity(
              opacity: 0.4,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: CustomPaint(
                  painter: FondoPaint2(),
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LiteRollingSwitch(
                      //initial value
                      value: mystate,
                      textOn: 'Registrar',
                      textOff: 'Ingresar',
                      colorOn: Color(0xff00ccd1),
                      colorOff: Color(0xff00019b),
                      iconOn: Icons.assignment,
                      iconOff: Icons.person,
                      textSize: 15.0,
                      onChanged: (bool state) {
                        //Use it to manage the different states
                        print('Current State of SWITCH IS: $state');
                      },
                      onTap: () {
                        setState(() {
                          mystate = !mystate;
                        });
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    mystate ? _registroPage(context) : _loginPage(context),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

String _nombre;
String _apellidos;
int _edad;
String _alias;

_registroPage(BuildContext context) {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  /* @override
  void dispose() {
    // Limpia el controlador cuando el Widget se descarte
    myController.dispose();
     myController1.dispose();
      myController2.dispose();
       myController3.dispose();
    return dispose();
  }*/

  final size = MediaQuery.of(context).size;
  return Opacity(
    opacity: 0.89,
    child: Container(
      height: 500.0,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(1, 5),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              'Datos Personales',
              style: TextStyle(
                color: Colors.green,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: myController,
              onSubmitted: (valorN) => _nombre = valorN,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Nombres',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: myController1,
              onSubmitted: (valorA) => _apellidos = valorA,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Apellidos',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.location_history_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: myController2,
              onSubmitted: (edad) => _edad.toString(),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Edad',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.app_registration_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: myController3,
              onSubmitted: (valorAli) => _alias = valorAli,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Alias',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.assignment_ind_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: Colors.indigoAccent,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'ENVIAR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(myController.text),
                    );
                  },
                );

                //DBProvider.db.nuevoScan();
              },
            ),
          ),
        ],
      ),
    ),
  );
}

_loginPage(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Opacity(
    opacity: 0.89,
    child: Container(
      height: 500.0,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(1, 5),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Icon(
                Icons.verified_user,
                size: 65.0,
                color: Colors.greenAccent.shade400,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Alias del Usuario',
                  labelStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.accessibility_new,
                    color: Colors.black,
                  ),
                  hintText: 'jr90',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            /*Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Contrase??a',
                  labelStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  hintText: '**********',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),*/
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: RaisedButton(
                splashColor: Colors.purpleAccent,
                padding: EdgeInsets.all(12.0),
                elevation: 7.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InicioPagina(),));
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProcesoPage(),
                  ));
                },
                color: Colors.lightBlue,
                child: Text(
                  'VERIFICAR',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                padding: EdgeInsets.only(right: 0.0),
                splashColor: Colors.purple.shade400,
                onPressed: () {},
                child: Text(
                  '??Olvidaste tu Alias?',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class FondoPaint1 extends CustomPainter {
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

    paint.color = Color(0xFF00E676);
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

class FondoPaint2 extends CustomPainter {
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

    paint.color = Color(0xFF00E676);
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
