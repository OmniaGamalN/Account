import 'dart:io';
import 'package:edit_profile/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageEditor extends StatefulWidget {
  const ProfileImageEditor({super.key});

  @override
  _ProfileImageEditorState createState() => _ProfileImageEditorState();
}

class _ProfileImageEditorState extends State<ProfileImageEditor> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: _imageFile != null
                  ? FileImage(_imageFile!)
                  : const AssetImage('assets/imagePrrofile.png') as ImageProvider,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height*0.001,
            right: MediaQuery.sizeOf(context).width*0.25 ,
            child: ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: AppColors.kWhite,
                  side: BorderSide(color: AppColors.kBlue, width: 1),
                  minimumSize: Size(30, 30)),
              child: const Icon(
                Icons.mode_edit_outlined,
                color: AppColors.kBlue,
              ),
            ),
          ),
        ]
      ),
    );
  }
}

