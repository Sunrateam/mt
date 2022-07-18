import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtstreamapp/Screens/freshers.dart';
import 'package:mtstreamapp/Screens/party.dart';
import 'package:mtstreamapp/Screens/pkmatches.dart';
import 'package:mtstreamapp/Screens/popular.dart';
import 'package:mtstreamapp/Screens/spotlight.dart';
import 'package:mtstreamapp/main.dart';
import 'package:mtstreamapp/widgets/color.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 2;
  bool isSelected = false;
  // TabController _tabController = TabController(length: 5, vsync: this);
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 5, vsync: this);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  colors.gradient1purple,
                  colors.gradient2pink
                  // Color(0xFFe17763),
                  // Color(0xFF68998c),
                ])),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        //Tabbar
                        child: TabBar(
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.only(left: 15, right: 15),
                          // controller: _tabController,
                          labelColor: colors.mywhite,
                          unselectedLabelStyle:
                              TextStyle(fontSize: 20.0, color: colors.mywhite),
                          labelStyle:
                              TextStyle(fontSize: 30.0, color: colors.myblack2),
                          unselectedLabelColor: colors.mywhite,
                          tabs: [
                            Tab(text: 'Freshers'),
                            Tab(text: 'Popular'),
                            Tab(
                              text: 'Spotlight',
                            ),
                            Tab(
                              text: 'Party',
                            ),
                            Tab(
                              text: 'Pkmatches',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          FontAwesomeIcons.searchengin,
                          color: colors.mywhite,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/toplist');
                          },
                          child: Icon(
                            Icons.military_tech,
                            color: colors.mywhite,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  // controller: _tabController,
                  children: [
                    Freshers(),
                    Popular(),
                    Spotlight(),
                    Party(),
                    PKmatches(),
                  ],
                ),
              )
            ],
          ),
        ),

        // bottom navigation bar
      ),
    );
  }
}



// appBar: AppBar(
//             backgroundColor: Color(0xFFfe4a97),
//             elevation: 0.0,
//             flexibleSpace: TabBar(
//               isScrollable: true,
//               tabs: [
//                 Tab(text: 'Freshers'),
//                 Tab(text: 'popular'),
//                 Tab(text: 'spotlight'),
//                 Tab(text: 'party'),
//                 Tab(text: 'PK matches')
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Freshers(),
//               Popular(),
//               Spotlight(),
//               Party(),
//               PKmatches(),
//             ],
//           ),
