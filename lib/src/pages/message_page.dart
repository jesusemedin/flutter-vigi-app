import 'package:flutter/material.dart';
import 'package:guard_app/src/providers/mssg_example_provider.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensajes'),
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      body: Messages(),
    );
  }
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: messages.loadData(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if (snapshot.hasData) {
          return MessageItem( messages: snapshot.data );
        } else {
          return Container(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}

class MessageItem extends StatelessWidget {

  final messages;

  MessageItem({@required this.messages });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int i ){
        return ListTile(
          visualDensity: VisualDensity(horizontal: 0.5, vertical: 0.5),
          title: Text( messages[i]['nombre'], style: TextStyle(fontWeight: FontWeight.bold), ),
          subtitle: Text('Proident ut magna dolor elit aliquip exercitation adipisicing. Dolore proident ipsum aute anim. Cillum laboris exercitation esse magna minim irure nostrud velit enim et velit consequat. Pariatur voluptate elit dolor laborum. Mollit quis culpa sit eiusmod exercitation laborum consequat qui ad.', overflow: TextOverflow.ellipsis,),
          leading: CircleAvatar(
            backgroundImage: NetworkImage('${messages[i]['ruta_imagen']}'),
          ),
          trailing: Icon( Icons.chevron_right_outlined ),
        );
      },
      separatorBuilder: ( BuildContext context, int i ){
        return Divider();
      },
    );
  }
}