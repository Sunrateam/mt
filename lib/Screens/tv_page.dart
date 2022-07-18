import 'package:flutter/material.dart';
import 'package:mtstreamapp/Screens/squad.dart';
import 'package:mtstreamapp/Screens/status.dart';
import 'package:mtstreamapp/widgets/color.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

class Tv extends StatefulWidget {
  const Tv({Key? key}) : super(key: key);

  @override
  State<Tv> createState() => _TvState();
}

class _TvState extends State<Tv> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  colors.gradient1purple,
                  colors.gradient1purple,
                  colors.gradient2pink,
                ])),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        child: Container(
                          height: 50,
                          width: 300,
                          child: TabBar(
                            isScrollable: true,
                            labelPadding:
                                const EdgeInsets.only(left: 15, right: 15),
                            // controller: _tabController,
                            labelColor: colors.mywhite,
                            unselectedLabelStyle: TextStyle(
                                fontSize: 20.0, color: colors.mywhite),
                            labelStyle: TextStyle(
                                fontSize: 30.0, color: colors.myblack2),
                            unselectedLabelColor: colors.mywhite2,
                            tabs: [
                              Tab(text: 'Status'),
                              Tab(text: 'Squad'),
                            ],
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
                    Status(),
                    Sqaud(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
