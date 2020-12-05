import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _NotificationsProvider {

  List<dynamic> notifications = [];

  _NotificationsProvider();

  Future<List<dynamic>> loadData() async{

    final response = await rootBundle.loadString('data/notifications_example.json');

    Map dataMap = jsonDecode( response );

    notifications = dataMap['notificaciones'];

    return notifications;
  }


}

final notificaciones = new _NotificationsProvider();