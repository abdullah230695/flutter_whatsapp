import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chats_model.dart';


class Chats extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chatsData .length,
        itemBuilder: (context,i) => new Column(
          children: [
            new Divider(height: 0.1,),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(chatsData[i].pic),

              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chatsData[i].name,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chatsData[i].time,style: TextStyle(fontSize: 12.0,color: Colors.blueGrey)
                  ),
                ],
              ),
              subtitle: Text(chatsData[i].msg,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.blueGrey)),),

          ],
        ));
  }
}
