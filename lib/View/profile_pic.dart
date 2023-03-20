import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  XFile? _image;
  _imgFromCamera()  {
    XFile image =  ImagePicker.platform.pickImage(
        source: ImageSource.camera, imageQuality: 50
    ) as XFile;

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() {
    File image = ImagePicker.platform.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    ) as File;

    setState(() {
      _image = image as XFile?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/p.png"),
          ),
          Positioned(
              right: -16,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white),
                  child: IconButton(
                      color: Colors.black,
                      onPressed: () async {
                        final ImagePicker _picker = ImagePicker();
                        final img = await _picker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          _image = img;
                        });
                      },
                      icon: const Icon(Icons.camera_alt,
                          size: 22, color: Colors.black)))),
        ],
      ),
    );
  }
}
