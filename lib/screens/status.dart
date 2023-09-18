import 'package:flutter/material.dart';
import 'package:flutter_application_13/models/messsag.dart';
import 'package:flutter_application_13/screens/setting.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<Messag> char=[
    Messag(name1: "Akhtar",image1: "assets/1.png",mass: "Today 2:40"),
    Messag(name1: "Reem",image1: "assets/2.png",mass: "Today 2:45"),];
   List<Messag> char1=[
    Messag(name1: "Fatma",image1: "assets/3.png",mass: "Today 3:46"),
    Messag(name1: "Alia",image1: "assets/4.png",mass: "Today 7:34")];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(   
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Card(child: ListTile(
            
        leading: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/2.png"),),
        title: Text("Akhtar"),
        subtitle: Text("Akhtar Alzarouni"),
        trailing: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
        }, icon: Icon(Icons.list)),
        ), ),
           Container(
            margin: EdgeInsets.all(10),
            child: Text("Recent Updeates",style: TextStyle(color: Colors.grey),)),
           Container(
            height: 200,
             child: ListView.builder(
                 
              itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Card(child: ListTile(
              leading: CircleAvatar(radius:30,backgroundImage: AssetImage(char[index].image1!),),
              title: Text(char[index].name1!),
              subtitle: Text(char[index].mass!),
              
              ),
              
              
              ),
                 ),
                 itemCount: char.length,
                ),
           ),
           Container(
            margin: EdgeInsets.all(10),
            child: Text("viewed Updeates",style: TextStyle(color: Colors.grey),)),
           Container(
            height: 200,
             child: ListView.builder(
                 
              itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Card(child: ListTile(
              leading: CircleAvatar(radius:30,backgroundImage: AssetImage(char1[index].image1!),),
              title: Text(char1[index].name1!),
              subtitle: Text(char1[index].mass!),
              
              ),
      
              
              ),
                 ),
                 itemCount: char1.length,
                ),
           )
         ],
       )
    );
  }
}