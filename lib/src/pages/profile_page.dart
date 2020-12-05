import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.grey[200],
      body: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          User(),
          SizedBox( height: 40.0 ),
          Data(),
          SizedBox( height: 40.0 ),
          Settings(),
          SizedBox( height: 40.0 ),
          LogOptions(),
          SizedBox( height: 40.0 ),
        ]
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      height: 200.0,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              child: Icon( Icons.account_circle, size: 90.0 ),
            ),
            Text('Pedro Perez', style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.w300 ))
          ]
        ),
      ),
    );
  }
}

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('Mi informacion'),
          ListTile(
            leading: Icon( Icons.mail ),
            title: Text('Mi correo'),
            subtitle: Text('example@example.com'),
          ),
          ListTile(
            leading: Icon( Icons.account_circle ),
            title: Text('Mi usuario'),
            subtitle: Text('peter_example01'),
          ),
          ListTile(
            leading: Icon( Icons.vpn_key ),
            title: Text('Mi contraseña'),
          ),
          ListTile(
            leading: Icon( Icons.person ),
            title: Text('Actualizar mis datos'),
          ),
        ]
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('Ajustes'),
          ListTile(
            leading: Icon( Icons.settings ),
            title: Text('Ir a configuracion'),
          ),
        ]
      ),
    );
  }
}

class LogOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('Sesion'),
          ListTile(
            leading: Icon( Icons.exit_to_app, color: Colors.red, ),
            title: Text('Cerrar sesion', style: TextStyle( color: Colors.red )),
          ),
        ]
      ),
    );
  }
}