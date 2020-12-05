import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _NotificationsProvider {

  List<dynamic> messages = [];

  _NotificationsProvider();

  Future<List<dynamic>> loadData() async{

    final response = await rootBundle.loadString('data/message_example.json');

    Map dataMap = jsonDecode( response );

    messages = dataMap['mensajes'];

    return messages;
  }


}

final messages = new _NotificationsProvider();