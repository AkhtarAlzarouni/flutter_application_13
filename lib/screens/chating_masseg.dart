import 'package:flutter/material.dart';

class ChatingMassege extends StatelessWidget {
  const ChatingMassege({super.key});

  @override
  Widget build(BuildContext context) {
    var Controller= TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
         
        title:Row(children: [
          CircleAvatar(radius:25,backgroundImage: AssetImage("assets/1.png"),),
          Container(
            margin: EdgeInsets.all(10),
            child: Text("Akhtar"))
        ],) ,
        actions: [
          Icon(Icons.video_call),
          Icon(Icons.call),
          Icon(Icons.list),

        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Container(
            margin: EdgeInsets.only(left: 100,bottom: 30,top: 30),
            width: 300,
            height: 60,
            clipBehavior: Clip.antiAlias,
            decoration:  BoxDecoration(color: Color.fromARGB(255, 157, 204, 157),
            borderRadius: BorderRadius.circular(15) 
        
            ),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text("Hi,Good morning",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),)),
            ),
             Container(
              
            margin: EdgeInsets.only(right: 100),
            width: 300,
            height: 60,
            clipBehavior: Clip.antiAlias,
            decoration:  BoxDecoration(color: Color.fromARGB(255, 207, 247, 207),
            borderRadius: BorderRadius.circular(15) 
        
            ),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text("Hi,Good morning",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),)),
            ),

      Container(
          margin: EdgeInsets.all(30),
            child: TextFormField(style: TextStyle(color: Colors.black),
              controller: Controller,
              decoration: InputDecoration( 
                suffixIcon: Icon(Icons.send),
                prefixIcon: Icon(Icons.camera_alt),

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),)
              ),
            ),
      ]),

    );
  }
}