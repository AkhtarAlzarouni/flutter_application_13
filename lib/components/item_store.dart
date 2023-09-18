import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemStore extends StatelessWidget {
 ItemStore({super.key,  required this.name, required this.image});
    String? name;
    String? image;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Material(
        color: Colors.black,
        elevation: 8,
     child: InkWell(
        onTap: (){},
        child:Column(children: [
         Ink.image(image: AssetImage(image!,),height: 100,width: 100,fit: BoxFit.cover,
      ),
      SizedBox(height: 3,),
      Text(name!),
      SizedBox(height: 3,)
        ])
    ),
    )
    );
  }
}