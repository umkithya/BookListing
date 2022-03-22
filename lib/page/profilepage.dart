import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: 65,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                radius: 60,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "User Name: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Johny Sin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sex: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Male",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Age: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "18",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nationality: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Khmer",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ],
      )),
    );
  }
}
