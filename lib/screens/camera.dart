import 'dart:io';

import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _selectedImgae;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    Future _pickImageFromCamera() async{
      var ImageSource;
      final returnedImage= await ImagePicker().pickImage(source: ImageSource.camera);
      if (returnedImage == null) return;
       setState(() {
         _selectedImgae =File(returnedImage.path);
       });
   
  }
}

  ImagePicker() {}}