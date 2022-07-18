// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mtstreamapp/widgets/color.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        title: Row(
          children: [
            Text('Inbox'),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/friends');
                  },
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/inbox');
                      },
                      child: Icon(Icons.people))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.settings),
            ),
          ],
        ),
        backgroundColor: Color(0xffFE3434),
      ),
      body: Column(
        children: [
          Expanded(
            //Listviewbuilder
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        color: colors.mywhite,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: Image(
                                image: AssetImage('assets/bell.png'),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Top Master Brand",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 120),
                                        child: CircleAvatar(
                                          maxRadius: 10,
                                          backgroundColor: Color(0xffFE3434),
                                          child: Text('2'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Private message',
                                        style: TextStyle(
                                            color: colors.mygrey, fontSize: 16),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 120),
                                        child: Text('4'),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text('Hour(s) ago'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
