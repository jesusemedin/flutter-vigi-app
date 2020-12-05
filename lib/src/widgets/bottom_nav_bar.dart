import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:guard_app/src/providers/bottom_navbar_provider.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);

    final currentIndex = bottomNavBarProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i ) => bottomNavBarProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
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