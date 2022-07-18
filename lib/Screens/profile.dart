import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtstreamapp/widgets/color.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 330,
            child: Image.asset(
              'assets/3stream.jpg',
              width: 500,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230, left: 20),
            child: Text(
              "User Name",
              style: TextStyle(color: colors.mywhite, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors.yellow,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.person,
                            size: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '21',
                            style:
                                TextStyle(fontSize: 15, color: colors.myblack),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors.myred,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Activate',
                            style:
                                TextStyle(fontSize: 15, color: colors.mywhite),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors.gradient2pink,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            FontAwesomeIcons.rankingStar,
                            size: 18,
                            color: colors.mywhite,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '20',
                            style:
                                TextStyle(fontSize: 15, color: colors.mywhite),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors.gradient1purple,
                    ),
                    child: Center(
                      child: Text(
                        'Love',
                        style: TextStyle(fontSize: 15, color: colors.mywhite),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors.gradient2pink,
                    ),
                    child: Center(
                      child: Text(
                        'Join',
                        style: TextStyle(fontSize: 15, color: colors.mywhite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 20),
            child: Text(
              'Date',
              style: TextStyle(
                color: colors.mywhite,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 20),
            child: Row(
              children: [
                Text(
                  'Squad Intro',
                  style: TextStyle(
                    color: colors.myblack,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380, left: 20),
            child: Row(
              children: [
                Text(
                  'Top up 99889999899889',
                  style: TextStyle(color: colors.mygrey, fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 420, left: 20),
            child: Row(
              children: [
                Text(
                  'Squad Memebers',
                  style: TextStyle(
                    color: colors.myblack,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '(  )',
                    style: TextStyle(
                      color: colors.myblack,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: colors.transparent,
                  maxRadius: 40,
                  child: Image.asset('assets/crown1.png'),
                ),
                CircleAvatar(
                  backgroundColor: colors.transparent,
                  maxRadius: 40,
                  child: Image.asset('assets/crown1.png'),
                ),
                CircleAvatar(
                  backgroundColor: colors.transparent,
                  maxRadius: 40,
                  child: Image.asset('assets/crown1.png'),
                ),
                CircleAvatar(
                  backgroundColor: colors.transparent,
                  maxRadius: 40,
                  child: Image.asset('assets/crown1.png'),
                ),
                CircleAvatar(
                  backgroundColor: colors.transparent,
                  maxRadius: 40,
                  child: Image.asset('assets/crown1.png'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520, left: 20),
            child: Row(
              children: [
                Text(
                  'Squad Status',
                  style: TextStyle(
                    color: colors.myblack,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 560),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/3stream.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/3stream.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/3stream.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/3stream.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
