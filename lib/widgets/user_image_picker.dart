import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key, required this.onSelectedImage});

  final void Function(File? image) onSelectedImage;
  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? pickedImageFile;
  void _pickimage()async{
    final _pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera, 
      imageQuality: 50, maxWidth: 150, );

      if(_pickedImage == null){
        return;
      }
      setState(() {
        pickedImageFile = File(_pickedImage.path);
      });
      widget.onSelectedImage(pickedImageFile!);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          foregroundImage: pickedImageFile != null ? FileImage(pickedImageFile!): null
        ),
        TextButton.icon(
          onPressed: _pickimage,
          icon: const Icon(Icons.image),
          label: const Text('Add An Image'))
      ],
    );
  }
}