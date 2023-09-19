import 'package:flutter/material.dart';
import 'package:flutter_application_13/models/messsag.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
     List<Messag> char=[
    Messag(name1: "Akhtar",image1: "assets/1.png",mass: "Hi",date: "3:50"),
    Messag(name1: "Reem",image1: "assets/2.png",mass: "Hi",date: "3:40"),
    Messag(name1: "Fatma",image1: "assets/3.png",mass: "Hi",date: "4:08"),
    Messag(name1: "Alia",image1: "assets/4.png",mass: "Hi",date: "4:17")
  ];
    return  Scaffold(   
       body: ListView.builder(
      
        itemBuilder: (context, index) => SizedBox(
        width: 100,
        child: Card(
          
          child: ListTile(
        leading: CircleAvatar(radius:30,backgroundImage: AssetImage(char[index].image1!),),
        title: Text(char[index].name1!,),
        subtitle: Text(char[index].date!),
        trailing: Icon(Icons.call),
        ), ),
      ),
      itemCount: char.length,
     )
    );
  }

}