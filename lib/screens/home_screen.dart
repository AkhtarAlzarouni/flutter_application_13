

import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/calls.dart';
import 'package:flutter_application_13/screens/camera.dart';
import 'package:flutter_application_13/screens/chats.dart';
import 'package:flutter_application_13/screens/setting.dart';
import 'package:flutter_application_13/screens/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsScreen(),));
        },
        child: Icon(Icons.chat,),),
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) {
              return ["Setting","Theme Mode"].map((e) {
                return PopupMenuItem(child: Text(e),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                  
                },
                );
              }).toList();
            },
            offset: Offset(4, 15),)
          ],
          title: Text("WhathsApp"),

          bottom: TabBar(
            unselectedLabelColor: Color.fromARGB(255, 201, 203, 204),
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
            Tab(
          
           text: "CHATS",),
           Tab(
           
           text: "STATUS",),
           Tab(
          
           text: "Calls",),
           
          ]
        ),
      
      ),

      body: TabBarView(children: [
        CameraScreen(),
        ChatsScreen(),
        StatusScreen(),
        CallScreen(),
        
      ]),
    ),
    );
  }
}