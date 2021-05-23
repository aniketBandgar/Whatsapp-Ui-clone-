import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _callDeatils(
      String imageUrl,
      String title,
      String date,
      String time,
      bool isincoming,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 32,
        ),
        title: Text(title),
        subtitle: Row(
          children: [
            isincoming
                ? Icon(
                    Icons.call_received,
                    color: Colors.red,
                    size: 15,
                  )
                : Icon(
                    Icons.call_made,
                    color: Colors.green,
                    size: 15,
                  ),
            Text(date),
            Text(time),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.call),
          color: Colors.green,
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          _callDeatils(
            "https://cdn.imgbin.com/0/16/0/imgbin-computer-icons-programmer-symbol-vQwiQyV9ECed12RTgUaKF23rQ.jpg",
            "Akshay Shahane",
            " 13 February ",
            " 10:45 am ",
            false,
          ),
          _callDeatils(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lead-short-summer-haircut-gettyimages-492416565-1556829330.jpg?crop=0.494xw:0.987xh;0.324xw,0&resize=640:*",
            "Alexa Micle",
            " 13 February ",
            " 10:45 am ",
            true,
          ),
          _callDeatils(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQz11HWt20igMF7h5fBpgXtFfGEbrl_e-k4rqOGE_Ns4H6suxkG",
            "Gaurav Sen",
            " (2) 04 February ",
            " 60:40 am ",
            true,
          ),
          _callDeatils(
            "https://post.healthline.com/wp-content/uploads/2019/09/man-city-urban-walking-serious-732x549-thumbnail.jpg",
            "Rachit Jain",
            " 28 February ",
            " 11:38 am ",
            false,
          ),
          _callDeatils(
            "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "Mrunal Gandhi",
            " 19/12/19 ",
            " 3:45 am ",
            true,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
        onPressed: () {},
      ),
    );
  }
}
