import 'package:flutter/material.dart';
import 'package:guard_app/src/providers/notfs_example_provider.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.settings, color: Colors.white, ),
            onPressed: (){},
          )
        ],
        backgroundColor: Colors.blue[900],
      ),
      body: Notifications(),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: notificaciones.loadData(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
          if( snapshot.hasData ){
            return NotificationsItem( notifications: snapshot.data );
          } else {
            return Container(
              height: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
            )
          );
        }
      }
    );
  }
}

class NotificationsItem extends StatelessWidget {

  final notifications;

  NotificationsItem({ @required this.notifications });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: notifications.length,
      itemBuilder: (BuildContext context, int i ){
        return ListTile(
          title: Text( notifications[i]['titulo'] ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Proident ut magna dolor elit aliquip exercitation adipisicing. Dolore proident ipsum aute anim. Cillum laboris exercitation esse magna minim irure nostrud velit enim et velit consequat. Pariatur voluptate elit dolor laborum. Mollit quis culpa sit eiusmod exercitation laborum consequat qui ad.', overflow: TextOverflow.ellipsis,),
              SizedBox(height: 5.0),
              Text('Hace 1 dia')
            ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage('${notifications[i]['ruta_imagen']}'),
          ),
          trailing: Icon( Icons.more_vert ),
        );
      },
      separatorBuilder: ( BuildContext context, int i ){
        return Divider();
      },
    );
  }
}