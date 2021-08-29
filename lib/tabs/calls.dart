import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/calls_model.dart';

class Calls extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: callsData .length,
        itemBuilder: (context,i) => new Column(
          children: [
            new Divider(height: 0.1,),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(callsData[i].pic),

              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    callsData[i].name,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    i%2==0? Icons.call:Icons.video_call_rounded,color: Theme.of(context).primaryColor,),

                ],
              ),
              subtitle: Text(
                  callsData[i].time,style: TextStyle(fontSize: 12.0,color: Colors.blueGrey)
              ),
            )
          ],
        ));
  }
}
