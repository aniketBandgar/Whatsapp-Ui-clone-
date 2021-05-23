import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  Widget _statusDetails(String title, String time, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: 32,
      ),
      title: Text(title),
      subtitle: Text(time),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://cdn.imgbin.com/0/16/0/imgbin-computer-icons-programmer-symbol-vQwiQyV9ECed12RTgUaKF23rQ.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      size: 19,
                    ),
                  ),
                )
              ],
              clipBehavior: Clip.none,
            ),
            title: Text('My status'),
            subtitle: Text('tap to add status update'),
          ),
          Container(
            color: Color.fromRGBO(236, 236, 236, 1),
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 20),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF075e54),
              ),
            ),
          ),
          _statusDetails("Raushan Jha", "20 minutes ago",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKI4x9W18p4WFV7CKdNvvFW1PZoRT1a_ZYDML2rp4prwOm9Bmn"),
          _statusDetails("Pawan Kumar", "50 minutes ago",
              "https://www.clipartmax.com/png/middle/293-2931307_account-avatar-male-man-person-profile-icon-profile-icons.png"),
          _statusDetails("Vivek Yadav", "2 hours ago",
              "https://images.unsplash.com/photo-1562979314-bee7453e911c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
          _statusDetails("Nikita Gandhi", "8 hours ago",
              "https://img.etimg.com/thumb/width-640,height-480,imgsize-117423,resizemode-1,msid-72352451/mumbai-central-is-indias-first-eat-right-station.jpg"),
          _statusDetails("Rahul Kusuma", "16 hours ago",
              "https://www.tajhotels.com/content/dam/thrp/destinations/Nashik/16x7intro/Intro-16x7.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg"),
          _statusDetails("Virat Kolhi", "22 hours ago",
              "https://previews.123rf.com/images/yupiramos/yupiramos2001/yupiramos200132071/138940228-face-young-woman-in-frame-circular-avatar-character-icon-vector-illustration-design.jpg"),
          _statusDetails("Anushka Sharma", "23 hours ago",
              "https://image.freepik.com/free-vector/young-man-with-frame-circular-avatar-character_24911-48146.jpg"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.image),
        onPressed: () {},
      ),
    );
  }
}
