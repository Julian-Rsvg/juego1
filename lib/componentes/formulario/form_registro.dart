import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
final scaffoldKey= new GlobalKey<ScaffoldState>();

final formKey = new GlobalKey<FormState>();
String _nombre;
String _apellidos;
int _edad;
String _alias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text('Formulario de registro'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Form(
          key: formKey,
          child: SingleChildScrollView(
            child:Column(
              children:<Widget> [
                TextFormField(
                  validator: (valorN) => !valorN.contains('') ? 'ingrese su nombre': null,
                  onSaved: (valorN) => _nombre = valorN,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: (valorA) => !valorA.contains('') ? 'ingrese sus apellidos': null,
                  onSaved: (valorA) => _apellidos = valorA,
                  decoration: InputDecoration(labelText: 'Apellidos'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: ( edad) => !edad.contains('') ? 'ingrese su edad': null,
                  onSaved: (edad) => _edad.toString(),
                  decoration: InputDecoration(labelText: 'Edad'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: (valorAli) => !valorAli.contains('') ? 'ingrese un alias': null,
                  onSaved: (valorAli) => _apellidos = valorAli,
                  decoration: InputDecoration(labelText: 'Alias'),
                ),
                SizedBox(height:20.0),
                RaisedButton(
                  child: Text("Enviar datos"),
                  onPressed: (){
                    final form = formKey.currentState;
                    if(form.validate()){
                      form.save();
                      mostrarSnackBar();
                    }
                  }
                ),
              ],
            ),

          ),
        ) ,
      ),

    );
  }

  void mostrarSnackBar() {
    final snackbar = SnackBar(
      content: Text("Nombre : $_nombre, Apellidos: $_apellidos, Edad: $_edad, Alias: $_alias"),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }
}


class RegistroPage extends StatefulWidget {
  
  @override
  _RegistroPageState createState() => _RegistroPageState();

}

class _RegistroPageState extends State<RegistroPage> {
final scaffoldKey= new GlobalKey<ScaffoldState>();

final formKey = new GlobalKey<FormState>();
String _nombre;
String _apellidos;
int _edad;
String _alias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text('Formulario de registro'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Form(
          key: formKey,
          child: SingleChildScrollView(
            child:Column(
              children:<Widget> [
                TextFormField(
                  validator: (valorN) => !valorN.contains('') ? 'ingrese su nombre': null,
                  onSaved: (valorN) => _nombre = valorN,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: (valorA) => !valorA.contains('') ? 'ingrese sus apellidos': null,
                  onSaved: (valorA) => _apellidos = valorA,
                  decoration: InputDecoration(labelText: 'Apellidos'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: ( edad) => !edad.contains('') ? 'ingrese su edad': null,
                  onSaved: (edad) => _edad.toString(),
                  decoration: InputDecoration(labelText: 'Edad'),
                ),
                SizedBox(height:20.0),
                TextFormField(
                  validator: (valorAli) => !valorAli.contains('') ? 'ingrese un alias': null,
                  onSaved: (valorAli) => _apellidos = valorAli,
                  decoration: InputDecoration(labelText: 'Alias'),
                ),
                SizedBox(height:20.0),
                RaisedButton(
                  child: Text("Enviar datos"),
                  onPressed: (){
                    final form = formKey.currentState;
                    if(form.validate()){
                      form.save();
                      mostrarSnackBar();
                    }
                  }
                ),
              ],
            ),

          ),
        ) ,
      ),

    );
  }

  void mostrarSnackBar() {
    final snackbar = SnackBar(
      content: Text("Nombre : $_nombre, Apellidos: $_apellidos, Edad: $_edad, Alias: $_alias"),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }
}


