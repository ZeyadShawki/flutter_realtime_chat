import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/string_extensions.dart';
@RoutePage()    

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Chats'.toSubTitle(color: Colors.white),
      ),
    );
  }
}
