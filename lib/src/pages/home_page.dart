
import 'package:flutter/material.dart';

import 'package:guard_app/src/widgets/buttom_nav_bar.dart';

import 'package:guard_app/src/pages/start_page.dart';
import 'package:guard_app/src/pages/notifications_page.dart';
import 'package:guard_app/src/pages/message_page.dart';
import 'package:guard_app/src/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final currentIndex = 3;

    switch (currentIndex) {
      case 0:
        return StartPage();
      case 1:
        return NotificationsPage();
      case 2:
        return MessagePage();
      case 3:
        return ProfilePage();
      default:
        return StartPage();
    }
  }
}