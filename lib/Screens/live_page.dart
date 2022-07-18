// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtclocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcremoteView;
import 'package:mtstreamapp/main.dart';
import 'package:mtstreamapp/widgets/color.dart';

import '../widgets/appid.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column());
  }
}
