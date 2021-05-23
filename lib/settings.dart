import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Widget _settingsDetails(String title, String subTitle, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.green,
        ),
        title: Text(title),
        subtitle: Text(subTitle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.imgbin.com/0/16/0/imgbin-computer-icons-programmer-symbol-vQwiQyV9ECed12RTgUaKF23rQ.jpg'),
                radius: 35,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Aniket',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                child: Text('busy'),
              ),
              trailing: Icon(
                Icons.qr_code,
                color: Colors.green,
              ),
            ),
          ),
          _settingsDetails(
              'Account', "Privacy, security, change number", Icons.vpn_key),
          _settingsDetails("Chats", "Backup, history, wallpaper", Icons.chat),
          _settingsDetails("Notification", "Messages, group, & call tones",
              Icons.notifications),
          _settingsDetails("Data and storage usage",
              "Network uses, auto-download", Icons.rotate_left),
          _settingsDetails(
              "Help", "Privacy, security, change number", Icons.help_outline),
          SizedBox(height: 8),
          Divider(height: 0.75),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.green,
              ),
              title: Text('invite a friend'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'from',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'F A C E B O O K',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
