import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';

class TopUP extends StatefulWidget {
  const TopUP({Key? key}) : super(key: key);

  @override
  State<TopUP> createState() => _TopUPState();
}

class _TopUPState extends State<TopUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                colors.gradient1purple,
                colors.gradient1purple,
                colors.gradient2pink,
                colors.gradient2pink,
                colors.gradient1purple,
              ])),
              height: 250,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Top - Up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: colors.mywhite),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            'Record',
                            style:
                                TextStyle(fontSize: 20, color: colors.mywhite2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Available Beans : 0',
                          style: TextStyle(fontSize: 20, color: colors.mywhite),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Card(
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Account ID :',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Acc. Name',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          'Gift to Friend',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 340),
              child: Card(
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Top Up Methods:',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'INDIA',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195),
                        child: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
