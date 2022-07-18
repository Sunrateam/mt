import 'package:flutter/material.dart';
import 'package:mtstreamapp/main.dart';
import 'package:mtstreamapp/widgets/color.dart';

class Vip extends StatefulWidget {
  const Vip({Key? key}) : super(key: key);

  @override
  State<Vip> createState() => _VipState();
}

class _VipState extends State<Vip> {
  var select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vip',
          style: TextStyle(color: colors.myblack),
        ),
        backgroundColor: colors.mywhite,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    select = 'VIP';
                    setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: select == 'VIP'
                            ? colors.gradient2pink
                            : colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "VIP",
                        style: TextStyle(
                          fontSize: select == 'VIP' ? 20 : 17,
                          color:
                              select == 'VIP' ? colors.mywhite : colors.myblack,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 'SVIP';
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: select == 'SVIP'
                              ? colors.gradient2pink
                              : colors.transparent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "SVIP",
                          style: TextStyle(
                            fontSize: select == 'SVIP' ? 20 : 17,
                            color: select == 'SVIP'
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
          select == 'VIP'
              ? Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/Limitless.png"),
                          Image.asset("assets/videochat.png"),
                          Image.asset("assets/safety.png"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/Mute.png"),
                            Image.asset("assets/badge.png"),
                            Image.asset("assets/rankboost.png"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Image.asset("assets/profileedit.png"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
