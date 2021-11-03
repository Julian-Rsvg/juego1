import 'dart:async';

class Validators{

  final validarAlias = StreamTransformer<String, String>.fromHandlers(
    handleData:  (alias, sink) {
      if(alias.isEmpty){
      sink.add(alias);
      }else{
      sink.addError('El alias no existe');
      }
    }
  );

}