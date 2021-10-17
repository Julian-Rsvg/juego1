import 'package:flutter/material.dart';
import 'package:juego1/login.dart';

class Multiplicacion extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Multiplicacion'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children:<Widget> [
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo1(),
          SizedBox(
            height:30.0
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      children:<Widget> [
        ListTile(
          leading:Icon(Icons.access_time,color:Colors.deepPurple),
          title:Text('nivel 1'),
          subtitle: Text('este nivel es el mas facil del tema de las multiplicaciones'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children:<Widget> [
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('OK'),
                onPressed: (){},
              )
            ],
          ),
      ],
    ),
  );
}
  
Widget _cardTipo2(){
  final card =  Container(
    //clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget> [
        FadeInImage(
          image: NetworkImage('https://www.mediafire.com/convkey/55e2/anwiuv4f0njad1t7g.jpg'),
          placeholder:AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height:400.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Plantilla 1'),
        ),
      ],
    ),
  );
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow:<BoxShadow>[
        BoxShadow(
          color: Colors.purple,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, -10.0),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}



}