// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtstreamapp/Screens/accinfo.dart';
import 'package:mtstreamapp/Screens/comments.dart';
import 'package:mtstreamapp/Screens/editprofile.dart';
import 'package:mtstreamapp/Screens/friendslist.dart';
import 'package:mtstreamapp/Screens/homepage.dart';
import 'package:mtstreamapp/Screens/inbox.dart';
import 'package:mtstreamapp/Screens/live_page.dart';
import 'package:mtstreamapp/Screens/login.dart';
import 'package:mtstreamapp/Screens/phonelogin.dart';
// import 'package:mtstreamapp/Screens/login.dart';
import 'package:mtstreamapp/Screens/popular.dart';
import 'package:mtstreamapp/Screens/profile.dart';
import 'package:mtstreamapp/widgets/color.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:mtstreamapp/Screens/setttings.dart';
import 'package:mtstreamapp/Screens/splashcreen.dart';
import 'package:mtstreamapp/Screens/toplist.dart';
import 'package:mtstreamapp/Screens/topup.dart';
import 'package:mtstreamapp/Screens/tv_page.dart';
import 'package:mtstreamapp/Screens/user.dart';
import 'package:mtstreamapp/Screens/vip.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:mtstreamapp/widgets/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme)),
      routes: {
        '/home': (context) => Homepage(),
        '/phonelogin': (context) => PhoneLogin(),
        '/popular': (context) => Popular(),
        '/friends': (context) => FriendsList(),
        '/inbox': (context) => Inbox(),
        '/accinfo': (context) => AccountInfo(),
        '/profile': (context) => Profile(),
        '/toplist': (context) => TopList(),
        '/settings': (context) => Settings(),
        '/topup': (context) => TopUP(),
        '/vip': (context) => Vip(),
        '/editprofile': (context) => Editprofile()
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [Homepage(), Tv(), Live(), Comments(), User()];

  int currentIndex = 0;

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        // title: ("Home"),
        activeColorPrimary: colors.pinkaccent,
        inactiveColorPrimary: colors.mywhite,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.tv_circle),
        // title: ("Tv"),
        activeColorPrimary: colors.pinkaccent,
        inactiveColorPrimary: colors.mywhite,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.camera_circle_fill,
          color: colors.mywhite,
        ),
        // title: ("Live"),
        activeColorPrimary: colors.pinkaccent,
        inactiveColorPrimary: colors.mywhite,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.mail_solid),
        // title: ("Notification"),
        activeColorPrimary: colors.pinkaccent,
        inactiveColorPrimary: colors.mywhite,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        // title: ("User"),
        activeColorPrimary: colors.pinkaccent,
        inactiveColorPrimary: colors.mywhite,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: pages,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: colors.gradient1purple, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
//  return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: currentIndex,
//           onTap: ontap,
//           showUnselectedLabels: true,
//           type: BottomNavigationBarType.shifting,
//           unselectedItemColor: Colors.black,
//           selectedItemColor: Colors.yellow,
//           backgroundColor: Color.fromARGB(255, 162, 3, 255),
//           items: [
//             BottomNavigationBarItem(
//                 backgroundColor: Color.fromARGB(255, 162, 3, 255),
//                 icon: Icon(
//                   Icons.home_filled,
//                 ),
//                 label: "home"),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.tv_off_outlined,
//                 ),
//                 label: "Tv"),
//             BottomNavigationBarItem(
//                 icon: InkWell(
//                   onTap: () {},
//                   child: Icon(
//                     Icons.videocam_rounded,
//                   ),
//                 ),
//                 label: "Live"),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.notifications_outlined,
//                 ),
//                 label: "Notification"),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.verified_user_outlined,
//                 ),
//                 label: "User")
//           ]),
//       body: pages[currentIndex],
//     );
//   }