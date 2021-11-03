
import 'dart:async';
import 'package:juego1/directorio/login/bloc/valdatos.dart';

class LoginBloc with Validators{

  final _aliasController = StreamController<String>.broadcast();
  
  //recuperar los datos
  Stream<String> get aliasStream => _aliasController.stream;

  //insertar valores
  Function(String) get ChangeAlias  =>  _aliasController.sink.add;

  dispose(){
    _aliasController.close();
  }

}

