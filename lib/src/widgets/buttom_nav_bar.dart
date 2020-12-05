import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon( Icons.home ),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.notifications),
          label: 'Notificaciones'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.message),
          label: 'Mensajes'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.supervised_user_circle),
          label: 'Perfil'
        ),
      ]
    );
  }
}