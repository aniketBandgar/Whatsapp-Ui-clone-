import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/calls.dart';
import 'package:whatsapp_ui_clone/camera.dart';
import 'package:whatsapp_ui_clone/chats.dart';
import 'package:whatsapp_ui_clone/settings.dart';
import 'package:whatsapp_ui_clone/status.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PopupMenuEntry<int> popMenuItem(String title, int value) {
    return PopupMenuItem<int>(
      child: Text(title),
      value: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            // indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: [
              Container(
                width: 30,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                ),
              ),
              Container(
                width: (deviceWidth - 30) / 5,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'CHATS',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: (deviceWidth - 30) / 5,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'STATUS',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: (deviceWidth - 30) / 5,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'CALLS',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => Settings(),
                  ),
                );
              },
              icon: Icon(Icons.search),
            ),
            PopupMenuButton<int>(
              elevation: 0,
              itemBuilder: (ctx) => [
                popMenuItem('New Group', 0),
                popMenuItem('New broadcast', 1),
                popMenuItem('WhatsApp Web', 2),
                popMenuItem('Starred messages', 3),
                popMenuItem('Setting', 4),
              ],
            ),
          ],
        ),
        body: TabBarView(children: [
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}
