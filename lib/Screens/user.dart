// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floating actionbuton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colors.mywhite,
        child: Icon(
          Icons.add,
          color: colors.myred,
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 350,
                width: 500,
                color: colors.myred,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/editprofile');
                              },
                              child: Icon(Icons.edit, color: colors.mywhite)),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/settings');
                              },
                              child: Icon(
                                Icons.settings,
                                color: colors.mywhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: CircleAvatar(
                              child: Image.asset("assets/cartoon.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 260, left: 150),
                      child: Row(
                        children: [
                          Text(
                            "Stranger",
                            style:
                                TextStyle(color: colors.mywhite, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ID:8568686',
                            style:
                                TextStyle(color: colors.mywhite, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '|',
                              style: TextStyle(
                                  color: colors.mywhite, fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'INDIA',
                              style: TextStyle(
                                  color: colors.mywhite, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Image.asset("assets/diamond.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Image.asset("assets/diamond.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Friends',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      'Followers',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Following',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: colors.mybluegrey,
              height: 15,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/topup');
                      },
                      child: Image.asset("assets/topup.png")),
                  Image.asset("assets/earnings.png"),
                  Image.asset("assets/mytasks.png"),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/vip');
                      },
                      child: Image.asset("assets/vip.png")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset("assets/store.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Image.asset("assets/mybag.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Image.asset("assets/mylevel.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Image.asset("assets/mybadge.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/helpsupport.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset("assets/mypeople.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 53),
                    child: Image.asset("assets/myinvites.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: InkWell(child: Image.asset("assets/roommang.png")),
                  ),
                ],
              ),
            ),
            Divider(
              color: colors.mybluegrey,
              height: 30,
              indent: 15,
              endIndent: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Moments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(175, 192, 192, 192),
                        ),
                        child: Icon(Icons.add),
                      ),
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
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Status',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: colors.mygrey,
              height: 30,
              indent: 15,
              endIndent: 15,
            ),
            Text(
              "No Data",
              style: TextStyle(fontSize: 20, color: colors.mybluegrey),
            )
          ],
        ),
      ),
    );
  }
}
