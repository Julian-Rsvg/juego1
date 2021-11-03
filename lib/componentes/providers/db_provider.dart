import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:juego1/modelo/modelo_base_datos.dart';
export 'package:juego1/modelo/modelo_base_datos.dart';

class DBProvider {

  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database>get database async {
    if (_database != null) return database;
    _database = await initDB();

    return _database;
  }

  initDB() async {
    Directory  documentsDirectory = await getApplicationDocumentsDirectory();
    final  path = join(documentsDirectory.path,'juegodb.db');
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version) async{
        await db.execute(
          'CREATE TABLE usuarios ('
          'id INTEGER PRIMARY KEY,'
          'nombre TEXT,'
          'apellidos TEXT,'
          'edad INTEGER,'
          'alias TEXT'
          ')'
        );
      }
    );
  }

  //CREAR REGISTROS DE LA BASE DE DATOS
  nuevoScanRaw(Modelo nuevoScan) async {
    final db = await database;

    final res = await db.rawInsert(
      "INSERT INTO usuarios (id, nombre, apellidos, edad, alias) "
      "VALUES (${nuevoScan.id},'${nuevoScan.nombre}','${nuevoScan.apellidos}',${nuevoScan.edad},'${nuevoScan.alias}')"
      );
      return res;
  }
  nuevoScan(Modelo nuevoScan) async{
    final db = await database;
    final res=  await db.insert('usuarios', nuevoScan.toJson());
    return res;
  }

  //select obtener informacion
  Future<Modelo>getScanId(int id) async {
    final db = await database;
    final res= await db.query('usuarios', where: 'id = ?', whereArgs: [id] );
    return res.isNotEmpty ? Modelo.fromJson(res.first) : null;
  }

  Future<List<Modelo>> getTodosScans()async{
    final db = await database;
    final res = await db.query('usuarios');

    List<Modelo> list= res.isNotEmpty
                          ? res.map((c) => Modelo.fromJson(c)).toList() 
                          : [];
    return list;
  }

  Future<List<Modelo>> getScansPorAlias(String alias)async{
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM usuarios WHERE alias='$alias'");

    List<Modelo> list= res.isNotEmpty
                          ? res.map((c) => Modelo.fromJson(c)).toList() 
                          : [];
    return list;
  }

  //actualizar los registros
  Future<int> updateScan(Modelo nuevoScan)async{
    final db = await database;
    final res = await db.update('usuarios',nuevoScan.toJson(), where: 'id = ?', whereArgs: [nuevoScan.id] );
    return res;
  }

  //borrar registro
  Future<int> deleteScan(int id)async {
    final db = await database;
    final res = await db.delete('usuarios', where: 'id = ?', whereArgs: [id]);
    return res;
  }

  Future<int> deleteAll()async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM usuarios');
    return res;
  }

}

