import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: colors.myblack),
        ),
        backgroundColor: colors.mywhite,
      ),
      body: Stack(
        children: [
          Card(
            shadowColor: colors.mybluegrey,
            child: Container(
              height: 50,
              width: 420,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Security',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: colors.mygrey,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Room Effects',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Inbox',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Language',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'App Alerts',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Clear Cache',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text(
                        '91 M',
                        style: TextStyle(color: colors.mygrey),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Review US !',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 420),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Facebook',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'FAQ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'FAQ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      'Current Version 0.0.0',
                      style: TextStyle(color: colors.mygrey),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Connect With Us',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: CircleAvatar(
                          maxRadius: 5,
                          backgroundColor: colors.myred,
                        )),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'About Us',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.mygrey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 660),
            child: Card(
              shadowColor: colors.mybluegrey,
              child: Container(
                height: 50,
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log Out',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
