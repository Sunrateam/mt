import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtstreamapp/widgets/color.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var select;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        select = 'Hot';
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: select == 'Hot'
                                  ? colors.gradient2pink
                                  : colors.transparent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "Hot",
                              style: TextStyle(
                                fontSize: select == 'Hot' ? 20 : 17,
                                color: select == 'Hot'
                                    ? colors.mywhite
                                    : colors.myblack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        select = 'New';
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: select == 'New'
                                  ? colors.gradient2pink
                                  : colors.transparent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "New",
                              style: TextStyle(
                                fontSize: select == 'New' ? 20 : 17,
                                color: select == 'New'
                                    ? colors.mywhite
                                    : colors.myblack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        select = 'Followed';
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              color: select == 'Followed'
                                  ? colors.gradient2pink
                                  : colors.transparent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "Followed",
                              style: TextStyle(
                                fontSize: select == 'Followed' ? 20 : 17,
                                color: select == 'Followed'
                                    ? colors.mywhite
                                    : colors.myblack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Trending'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280),
                      child: Text('More >'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(left: 10, top: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage('assets/2stream.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, top: 160),
                              child: Text(
                                "#Hashtags#trendings",
                                style: TextStyle(
                                    fontSize: 20, color: colors.myblack),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 300,
                        width: 300,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: CircleAvatar(
                                      maxRadius: 15,
                                      child: Image.asset('assets/icon.png'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'User_Name',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 170),
                                    child: Container(
                                      height: 40,
                                      width: 49,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              192, 223, 221, 221),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        Icons.add,
                                        color: colors.myred,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "#hashtags#trendings",
                                      style:
                                          TextStyle(color: colors.mybluegrey),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 60),
                            //   child: Center(
                            //     child: Container(
                            //         height: 250,
                            //         width: 200,
                            //         child: Image.asset('assets/1stream.jpg')),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 250),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '23',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: colors.mybluegrey),
                                    ),
                                  ),
                                  Text(
                                    'hour(s) ago',
                                    style: TextStyle(
                                        fontSize: 20, color: colors.mybluegrey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: CircleAvatar(
                                      maxRadius: 10,
                                      child: Image.asset('assets/icon.png'),
                                    ),
                                  ),
                                  CircleAvatar(
                                    maxRadius: 10,
                                    child: Image.asset('assets/icon.png'),
                                  ),
                                  CircleAvatar(
                                    maxRadius: 10,
                                    child: Image.asset('assets/icon.png'),
                                  ),
                                  CircleAvatar(
                                    maxRadius: 10,
                                    child: Icon(
                                      Icons.more_horiz,
                                      size: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Likes',
                                      style: TextStyle(color: colors.mygrey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 280),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(Icons.favorite_border),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Likes"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(Icons.mode_comment_outlined),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Comments'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(FontAwesomeIcons.whatsapp),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 130),
                                    child: Icon(Icons.more_horiz),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}



//
