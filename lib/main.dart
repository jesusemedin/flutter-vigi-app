import 'package:flutter/material.dart';

import 'package:guard_app/src/pages/home_page.dart';
import 'package:provider/provider.dart';

import 'package:guard_app/src/providers/bottom_navbar_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => new BottomNavBarProvider() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Watchers App',
        initialRoute: 'home',
        routes: {
          'home'  : (BuildContext context ) => HomePage(),
        },
      ),
    );
  }
}