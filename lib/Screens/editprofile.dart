import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  var isselected;
  String? gender = 'male';
  File? image = null;

  Future pickImage(ImageSource source) async {
    try {
      final Image = await ImagePicker().pickImage(source: source);
      if (Image == null) return;

      image = File(Image.path);
      // final imagePermanent = await saveImagePermanent(image!.path);
      setState(() {});
    } on PlatformException catch (e) {
      print('failed to pick image:$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.whitegrey,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: colors.myblack),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Choose From'),

                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 30,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      pickImage(ImageSource.camera);
                                    },
                                    child: Text(
                                      'Camera',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  image = null;
                                  Navigator.pop(context);
                                  pickImage(ImageSource.gallery);
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Icon(
                                        Icons.collections_outlined,
                                        size: 30,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          pickImage(ImageSource.gallery),
                                      child: Text(
                                        'Gallery',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Icon(
                                      Icons.cancel,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              // ElevatedButton(
                              //   child: const Text('Close BottomSheet'),
                              //   onPressed: () => Navigator.pop(context),
                              // )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                      backgroundColor: colors.transparent,
                      child: image != null
                          ? ClipOval(
                              child: Image.file(
                                image!,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            )
                          : FlutterLogo(
                              size: 30,
                            )),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Nickname",
                    style: TextStyle(color: colors.mygrey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Change Nick name"),
                          content: Container(
                            height: 100,
                            width: 250,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Nickname',
                              ),
                            ),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: Row(
                                children: [
                                  Text(
                                    "Cancel",
                                    style: TextStyle(color: colors.mygrey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          color: colors.gradient2pink),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      });
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Nickname",
                        style: TextStyle(color: colors.myblack, fontSize: 20),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 270),
                        child: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Id",
                      style: TextStyle(color: colors.mygrey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "ID",
                      style: TextStyle(color: colors.myblack, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: colors.pinkaccent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'Copy',
                              style: TextStyle(
                                  fontSize: 15, color: colors.mywhite),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Region",
                      style: TextStyle(color: colors.mygrey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "India",
                      style: TextStyle(color: colors.myblack, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Gender",
                      style: TextStyle(color: colors.mygrey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Gender"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile(
                                    value: "Male",
                                    title: Text("Male"),
                                    groupValue: isselected,
                                    onChanged: (value) {
                                      setState(() {
                                        isselected = value;
                                        gender = value.toString();
                                        print(isselected);
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    value: "Female",
                                    title: Text("FeMale"),
                                    groupValue: isselected,
                                    onChanged: (value) {
                                      setState(() {
                                        isselected = value;
                                        gender = value.toString();
                                        print(isselected);
                                      });
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      });
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        gender.toString(),
                        style: TextStyle(color: colors.myblack, fontSize: 20),
                      ),
                    ),
                    // Padding(
                    //     padding: const EdgeInsets.only(left: 0),
                    //     child: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Birthday",
                      style: TextStyle(color: colors.mygrey),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 320),
                      child: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Introduction",
                      style: TextStyle(color: colors.mygrey),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 300),
                      child: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
