import 'package:flutter/material.dart';
import 'package:flutter_application_13/models/set.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
   List<Setting> char=[
    Setting(name: "Chat",image: Icon(Icons.chat),det: "Hi"),
    Setting(name: "Notificacion",image: Icon(Icons.notification_add),det: "Hi"),
    Setting(name: "Help",image: Icon(Icons.help),det: "Hi"),
    Setting(name: "Account",image: Icon(Icons.account_balance),det: "Hi"),
   ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(   
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Setting"),
      ),
       body: 
       
       
       Column(
         children:[
          Card(child: ListTile(
        leading: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/1.png"),),
        title: Text("Akhtar"),
        subtitle: Text("hi"),
        ), ),

          Container(
            width: 400,
            height: 300,
            child: ListView.builder(
             
              itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Card(child: ListTile(
              leading: char[index].image!,
              title: Text(char[index].name!),
              subtitle: Text(char[index].det!),
              ), ),
                 ),
                 
                 itemCount: char.length,
                ),
          ),
       ]),
       
    );
  }
}