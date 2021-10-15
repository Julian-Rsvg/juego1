import 'package:flutter/material.dart';

class InicioPagina extends StatefulWidget {
  @override
  createState() => _InicioPaginaState();
}

class _InicioPaginaState extends State<InicioPagina> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MathThink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue[200],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MathThink'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(
            top:100,
            bottom: 10,
            right: 10,
            left: 10
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media-cine.entradas.com/aL1veg3f8SWsojzLGOcfb-sw-z0=/280x400/images%2Ffilm%2Fla-granja-de-zenon-18627.v2.jpg"),
                  alignment: Alignment.topCenter
                  )
                  ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 1",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 2",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 3",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 4",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 5",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.deepPurple[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: SizedBox(
                              width: 100,
                              height: 10,
                              child: Center(
                                child: Text(
                                  "OPTION 6",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
