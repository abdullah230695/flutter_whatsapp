import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/status_model.dart';

class Status extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    child: Stack(
                      children: [
                        ClipOval( //for double widget
                          child: Image.network("https://randomuser.me/api/portraits/med/men/11.jpg"),
                        ),
                        Align(
                          alignment: Alignment.bottomRight, //for small + button
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(20.0),

                            ),
                            child: Icon(Icons.add,color: Colors.white,size: 15.0,),
                            
                          ),
                        )
                      ],
                    ),
                  ),
                title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Tap to add status update'),
              ),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            height: 30.0,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text('Recent Updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
          ),
        Expanded(
          child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context,i) => new Column(
                children: [
                  Divider(height: 0.1),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(statusData[i].pic),
                      backgroundColor: Colors.blueGrey,
                    ),
                    title: Row(
                      children: [
                        Text(statusData[i].name),
                      ],
                    ),
                    subtitle: Text(statusData[i].time,style: TextStyle(fontSize: 13.0,color: Colors.blueGrey),),
                  )
                ],
              )),
        )

      ],
    );
  }
}
