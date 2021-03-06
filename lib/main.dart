


import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/tabs/calls.dart';
import 'package:flutter_whatsapp/tabs/camera.dart';
import 'package:flutter_whatsapp/tabs/chats.dart';
import 'package:flutter_whatsapp/tabs/status.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    primaryColor: new Color(0xff075e54),
    accentColor: new Color(0xff25d366)
  ),
  home: MyApp(),
));

class MyApp extends StatefulWidget{
  

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1)..addListener(() {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){},
          color: Colors.white,),
          IconButton(icon: Icon(Icons.more_vert_sharp), onPressed: (){},
          color: Colors.white,)
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller:_tabController,
          tabs: [
            Tab(icon:Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),

          ],
        ),
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Camera(),
            new Chats(),
            new Status(),
            new Calls(),
          ]),
      floatingActionButton: _tabController.index==0?
      FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ):
      _tabController.index==1?
      FloatingActionButton(
        child: Icon(Icons.message,color: Colors.white,),
      ):
      _tabController.index==2?
      Column(
       mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 45.0,
            width: 45.0,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {  },
              child: Icon(Icons.edit,color: Colors.blueGrey,),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            child: Icon(Icons.camera_alt,color: Colors.white,),
          )
        ],
      ):
      FloatingActionButton(
    onPressed: () {  },
    child: Icon(Icons.add_call,color: Colors.white,),
    ),
    );
  }
}

