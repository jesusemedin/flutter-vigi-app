import 'dart:ui';

import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGroundApp(),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TitleApp(),
              MenuButtons(),
            ]
          )
        )
      ],
    );
  }
}

class BackGroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final background = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.1),
          end: FractionalOffset(0.0, 1.0),
          colors: <Color>[
            Color.fromRGBO(255, 255, 255, 1.0),
            Color.fromRGBO(150, 150, 150, 1.0),
          ]
        )
      ),
    );

    final backgroundDecorationTop = Transform.rotate(
      angle: 0.5,
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.3),
            end: FractionalOffset(0.3, 1.0),
            colors: <Color>[
              Color.fromRGBO(15, 127, 240, 1.0),
              Color.fromRGBO(2, 27, 121, 1.0),
            ]
          )
        ),
      )
    );

    final backgroundDecorationBottom = Transform.rotate(
        angle: 0.5,
        child: Container(
          height: 400.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular( 80.0 ),
              gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.3),
                  end: FractionalOffset(0.3, 1.0),
                  colors: <Color>[
                    Color.fromRGBO(2, 27, 121, 1.0),
                    Color.fromRGBO(15, 127, 240, 1.0),
                  ]
              )
          ),
        )
    );


    return Stack(
      children: <Widget>[
        background,
        Positioned(
          top: -180.0,
          left: -25,
          child: backgroundDecorationTop
        ),
        Positioned(
            bottom: -350.0,
            left: 45.0,
            child: backgroundDecorationBottom
        )
      ],
    );
  }
}

class TitleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainText = TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    final secondaryText = TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Vigilancia', style: mainText,),
            SizedBox(height: 10.0),
            Text('Su aplicacion de servicios', style: secondaryText,)
          ],
        ),
      ),
    );
  }
}

class MenuButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            _boton('Propuestas', Icons.work),
            _boton('Empresas', Icons.business),
          ]
        ),
        TableRow(
          children: <Widget>[
            _boton('Contratos', Icons.poll),
            _boton('Curriculum', Icons.text_snippet),
          ]
        ),
        TableRow(
          children: <Widget>[
            _boton('Ayuda', Icons.help),
            _boton('Configuracion', Icons.settings),
          ]
        ),
      ],
    );
  }

  Widget _boton(String texto, IconData icon){
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.7),
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.blue[900],
                child: Icon(icon, color: Colors.white, size: 50.0)
              ),
              Text(texto, style: TextStyle( color: Colors.grey[600], fontWeight: FontWeight.bold),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }
}