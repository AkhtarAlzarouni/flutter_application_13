import 'package:flutter/material.dart';
import 'package:flutter_application_13/models/messsag.dart';
import 'package:flutter_application_13/screens/chating_masseg.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<Messag> char=[
    Messag(name1: "Akhtar",image1: "assets/1.png",mass: "good",date: "3:50"),
    Messag(name1: "Reem",image1: "assets/2.png",mass: "No",date: "3:40"),
    Messag(name1: "Fatma",image1: "assets/3.png",mass: "Hi,Good morning",date: "4:08"),
    Messag(name1: "Alia",image1: "assets/4.png",mass: "yes",date: "4:17")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
       body: ListView.builder(
      
        itemBuilder: (context, index) => SizedBox(
        width: 100,
        child: Card(
          
          child: ListTile(
        leading: CircleAvatar(radius:30,backgroundImage: AssetImage(char[index].image1!),),
        title: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatingMassege(),));
          }, 
            
          child: Text(char[index].name1!,style: TextStyle(color: Colors.black),)
          
          ),
   
        subtitle: Text(char[index].mass!),
        trailing: Text(char[index].date!),
        ), ),
      ),
      itemCount: char.length,
     )
    );
  }
}